package repository

import (
	"context"
	"database/sql"
	"fmt"
	"strings"
	"time"

	"github.com/sidiqPratomo/mp-backend/entity"
)

type VoucherRepository interface {
	SoftDeleteVoucher(ctx context.Context, voucherID int, updatedBy string) error
	Update(ctx context.Context, voucher *entity.Voucher) error
	Create(ctx context.Context, voucher *entity.Voucher) error
	FindByID(ctx context.Context, id int) (*entity.Voucher, error)
	FindAll(ctx context.Context, params entity.VoucherQuery) ([]entity.Voucher, int, error)
}

type voucherRepositoryDB struct {
	db DBTX
}

func NewVoucherRepositoryDB(db *sql.DB) voucherRepositoryDB {
	return voucherRepositoryDB{
		db: db,
	}
}

func (r *voucherRepositoryDB) FindAll(ctx context.Context, params entity.VoucherQuery) ([]entity.Voucher, int, error) {
	query := `
		SELECT id, voucher_code, discount_percent, expiry_date, created_at, updated_at
		FROM vouchers
		WHERE deleted_at IS NULL
	`

	// Dynamic WHERE, SORT, LIMIT
	var args []interface{}
	if params.Status != nil {
		query += " AND status = ?"
		args = append(args, *params.Status)
	}

	if params.SortBy != "" {
		direction := "ASC"
		if strings.ToUpper(params.SortOrder) == "DESC" {
			direction = "DESC"
		}
		query += fmt.Sprintf(" ORDER BY %s %s", params.SortBy, direction)
	} else {
		query += " ORDER BY created_at DESC"
	}

	query += " LIMIT ? OFFSET ?"
	args = append(args, params.Limit, params.Offset)

	rows, err := r.db.QueryContext(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var vouchers []entity.Voucher
	for rows.Next() {
		var v entity.Voucher
		if err := rows.Scan(&v.ID, &v.VoucherCode, &v.DiscountPercent, &v.ExpiryDate, &v.CreatedAt, &v.UpdatedAt); err != nil {
			return nil, 0, err
		}
		vouchers = append(vouchers, v)
	}

	// Total count
	countQuery := `SELECT COUNT(*) FROM vouchers WHERE deleted_at IS NULL`
	var count int
	if err := r.db.QueryRowContext(ctx, countQuery).Scan(&count); err != nil {
		return nil, 0, err
	}

	return vouchers, count, nil
}

func (r *voucherRepositoryDB) FindByID(ctx context.Context, id int) (*entity.Voucher, error) {
	query := `
		SELECT id, voucher_code, discount_percent, expiry_date, created_at, updated_at
		FROM vouchers
		WHERE id = ? AND deleted_at IS NULL
	`
	var v entity.Voucher
	err := r.db.QueryRowContext(ctx, query, id).Scan(
		&v.ID, &v.VoucherCode, &v.DiscountPercent, &v.ExpiryDate, &v.CreatedAt, &v.UpdatedAt,
	)
	if err != nil {
		return nil, err
	}
	return &v, nil
}

func (r *voucherRepositoryDB) Create(ctx context.Context, voucher *entity.Voucher) error {
	query := `
		INSERT INTO vouchers (voucher_code, discount_percent, expiry_date, created_at, updated_at)
		VALUES (?, ?, ?, ?, ?)
	`
	res, err := r.db.ExecContext(ctx, query,
		voucher.VoucherCode,
		voucher.DiscountPercent,
		voucher.ExpiryDate,
		voucher.CreatedAt,
		voucher.UpdatedAt,
	)
	if err != nil {
		return err
	}

	id, err := res.LastInsertId()
	if err != nil {
		return err
	}
	voucher.ID = int(id)
	return nil
}

func (r *voucherRepositoryDB) Update(ctx context.Context, voucher *entity.Voucher) error {
	query := `
		UPDATE vouchers
		SET voucher_code = ?, discount_percent = ?, expiry_date = ?, updated_at = ?
		WHERE id = ? AND deleted_at IS NULL
	`
	_, err := r.db.ExecContext(ctx, query,
		voucher.VoucherCode,
		voucher.DiscountPercent,
		voucher.ExpiryDate,
		voucher.UpdatedAt,
		voucher.ID,
	)
	return err
}

func (r *voucherRepositoryDB) SoftDeleteVoucher(ctx context.Context, voucherID int, updatedBy string) error {
	now := time.Now()
	query := `
		UPDATE vouchers
		SET deleted_at = ?
		WHERE id = ? AND deleted_at IS NULL
	`
	_, err := r.db.ExecContext(ctx, query, now, voucherID)
	return err
}

