package repository

import (
	"context"
	"database/sql"
	"fmt"
	"mime/multipart"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/sidiqPratomo/mp-backend/entity"
	"github.com/sidiqPratomo/mp-backend/util"
)

type VoucherRepository interface {
	SoftDeleteVoucher(ctx context.Context, voucherID int, updatedBy string) error
	Update(ctx context.Context, voucher *entity.Voucher) error
	Create(ctx context.Context, voucher *entity.Voucher) error
	FindByID(ctx context.Context, id int) (*entity.Voucher, error)
	FindAll(ctx context.Context, params entity.VoucherQuery) ([]entity.Voucher, int, error)
	SaveCSVFile(ctx context.Context, file *multipart.FileHeader, bucket, subPath string) error
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

// repository/voucher_repository.go
func (r *voucherRepositoryDB) SaveCSVFile(ctx context.Context, file *multipart.FileHeader, bucket, subPath string) error {
	// Generate unique filename
	ext := filepath.Ext(file.Filename)
	filenameOnly := file.Filename[:len(file.Filename)-len(ext)]
	timestamp := time.Now().Format("20060102_150405.000000")
	uniqueFilename := fmt.Sprintf("%s_%s%s", filenameOnly, timestamp, ext)

	targetDir := filepath.Join("storage", bucket, subPath)
	err := os.MkdirAll(targetDir, os.ModePerm)
	if err != nil {
		return err
	}

	dst := filepath.Join(targetDir, uniqueFilename)
	return util.SaveUploadedFile(file, dst)
}

func (r *voucherRepositoryDB) FindByID(ctx context.Context, id int) (*entity.Voucher, error) {
	query := `
		SELECT id, voucher_code, discount_percent, expiry_date, created_at, updated_at, file
		FROM vouchers
		WHERE id = ? AND deleted_at IS NULL
	`
	var v entity.Voucher
	err := r.db.QueryRowContext(ctx, query, id).Scan(
		&v.ID, &v.VoucherCode, &v.DiscountPercent, &v.ExpiryDate, &v.CreatedAt, &v.UpdatedAt, &v.File,
	)
	if err != nil {
		return nil, err
	}
	return &v, nil
}

func (r *voucherRepositoryDB) Create(ctx context.Context, voucher *entity.Voucher) error {
	query := `
		INSERT INTO vouchers (voucher_code, discount_percent, expiry_date, created_at, updated_at, status, file)
		VALUES (?, ?, ?, ?, ?, 1, ?)
	`
	res, err := r.db.ExecContext(ctx, query,
		voucher.VoucherCode,
		voucher.DiscountPercent,
		voucher.ExpiryDate,
		voucher.CreatedAt,
		voucher.UpdatedAt,
		voucher.File,
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
		SET voucher_code = ?, discount_percent = ?, expiry_date = ?, updated_at = ?, file = ?
		WHERE id = ? AND deleted_at IS NULL
	`
	_, err := r.db.ExecContext(ctx, query,
		voucher.VoucherCode,
		voucher.DiscountPercent,
		voucher.ExpiryDate,
		voucher.UpdatedAt,
		voucher.File, 
		voucher.ID, 
	)
	return err
}

func (r *voucherRepositoryDB) SoftDeleteVoucher(ctx context.Context, voucherID int, updatedBy string) error {
	now := time.Now()
	query := `
		UPDATE vouchers
		SET deleted_at = ?, status = 0
		WHERE id = ? AND deleted_at IS NULL
	`
	_, err := r.db.ExecContext(ctx, query, now, voucherID)
	return err
}

