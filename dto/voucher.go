package dto

import "time"

type VoucherDetail struct {
	ID              int       `json:"id"`
	VoucherCode     string    `json:"voucher_code"`
	DiscountPercent int       `json:"discount_percent"`
	ExpiryDate      time.Time `json:"expiry_date"`
	CreatedAt       time.Time `json:"created_at"`
	UpdatedAt       time.Time `json:"updated_at"`
	Status          int       `json:"status"`
	File            string    `json:"file"`
}

type UpdateVoucherRequest struct {
	ID              int    `json:"id"` // optional for create
	VoucherCode     string `json:"voucher_code" binding:"required"`
	DiscountPercent int    `json:"discount_percent" binding:"required,min=1,max=100"`
	ExpiryDate      string `json:"expiry_date" binding:"required"`
	File            string `json:"file"`
}

type CreateVoucherRequest struct {
	ID              int    `json:"id"` // optional for create
	VoucherCode     string `json:"voucher_code" binding:"required"`
	DiscountPercent int    `json:"discount_percent" binding:"required,min=1,max=100"`
	ExpiryDate      string `json:"expiry_date" binding:"required"`
	File            string `json:"file"`
}
