package entity

import "time"

type Voucher struct {
	ID             int       `db:"id"`
	VoucherCode    string    `db:"voucher_code"`
	DiscountPercent int      `db:"discount_percent"`
	ExpiryDate     time.Time `db:"expiry_date"`
	CreatedAt      time.Time `db:"created_at"`
	UpdatedAt      time.Time `db:"updated_at"`
	DeletedAt      *time.Time `db:"deleted_at"` // for soft delete
}

type VoucherQuery struct {
	Limit  int
	Offset int
	SortBy string
	SortOrder string
	Status *int
}