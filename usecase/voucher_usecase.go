package usecase

import (
	"context"
	"fmt"
	"mime/multipart"
	"time"

	"github.com/sidiqPratomo/mp-backend/dto"
	"github.com/sidiqPratomo/mp-backend/entity"
	"github.com/sidiqPratomo/mp-backend/repository"
	"github.com/sidiqPratomo/mp-backend/util"
)

type VoucherUsecase interface {
	Index(ctx context.Context, params dto.QueryParams) (*dto.ResponseIndex[dto.PagedResult[dto.VoucherDetail]], error)
	Read(ctx context.Context, voucherID int) (*dto.VoucherDetail, error)
	Create(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error)
	Update(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error)
	SoftDelete(ctx context.Context, voucherID int, updatedBy string) error
	UploadCSV(ctx context.Context, file *multipart.FileHeader, bucket, path string) (string, error)
}

type voucherUsecaseImpl struct {
	voucherRepository repository.VoucherRepository
	transaction       repository.Transaction
}

type VoucherUsecaseImplOpts struct {
	VoucherRepository repository.VoucherRepository
	Transaction       repository.Transaction
}

func NewVoucherUsecaseImpl(opts VoucherUsecaseImplOpts) voucherUsecaseImpl {
	return voucherUsecaseImpl{
		voucherRepository: opts.VoucherRepository,
		transaction:       opts.Transaction,
	}
}

func (uc *voucherUsecaseImpl) UploadCSV(ctx context.Context, file *multipart.FileHeader, bucket, path string) (string, error) {
	return uc.voucherRepository.SaveCSVFile(ctx, file, bucket, path)
}

func (uc *voucherUsecaseImpl) Index(ctx context.Context, params dto.QueryParams) (*dto.ResponseIndex[dto.PagedResult[dto.VoucherDetail]], error) {
	query := params.ToVoucherQuery()
	vouchers, total, err := uc.voucherRepository.FindAll(ctx, query)
	if err != nil {
		return &dto.ResponseIndex[dto.PagedResult[dto.VoucherDetail]]{
			Status:  false,
			Message: "failed to fetch vouchers",
			Code:    500,
		}, err
	}

	var results []dto.VoucherDetail
	for _, v := range vouchers {
		results = append(results, dto.VoucherDetail{
			ID:              v.ID,
			VoucherCode:     v.VoucherCode,
			DiscountPercent: v.DiscountPercent,
			ExpiryDate:      v.ExpiryDate,
			CreatedAt:       v.CreatedAt,
			UpdatedAt:       v.UpdatedAt,
		})
	}

	return &dto.ResponseIndex[dto.PagedResult[dto.VoucherDetail]]{
		Status: true,
		Data: dto.PagedResult[dto.VoucherDetail]{
			Result: results,
			Count:  total,
		},
		Message: "List of vouchers",
		Code:    200,
	}, nil
}

func (uc *voucherUsecaseImpl) Read(ctx context.Context, voucherID int) (*dto.VoucherDetail, error) {
	v, err := uc.voucherRepository.FindByID(ctx, voucherID)
	if err != nil {
		return nil, err
	}

	return &dto.VoucherDetail{
		ID:              v.ID,
		VoucherCode:     v.VoucherCode,
		DiscountPercent: v.DiscountPercent,
		ExpiryDate:      v.ExpiryDate,
		CreatedAt:       v.CreatedAt,
		UpdatedAt:       v.UpdatedAt,
		File:            util.DerefString(v.File),
	}, nil
}

func (uc *voucherUsecaseImpl) Create(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error) {
	layout := "2006-01-02"
	parsedDate, err := time.Parse(layout, input.ExpiryDate)
	if err != nil {
		return nil, fmt.Errorf("invalid date format, must be YYYY-MM-DD: %w", err)
	}

	voucher := entity.Voucher{
		VoucherCode:     input.VoucherCode,
		DiscountPercent: input.DiscountPercent,
		ExpiryDate:      parsedDate,
		CreatedAt:       time.Now(),
		UpdatedAt:       time.Now(),
		File:            &input.File,
	}
	err = uc.voucherRepository.Create(ctx, &voucher)
	if err != nil {
		return nil, err
	}

	return &dto.VoucherDetail{
		ID:              voucher.ID,
		VoucherCode:     voucher.VoucherCode,
		DiscountPercent: voucher.DiscountPercent,
		ExpiryDate:      voucher.ExpiryDate,
		CreatedAt:       voucher.CreatedAt,
		UpdatedAt:       voucher.UpdatedAt,
		File:            *voucher.File,
	}, nil
}

func (uc *voucherUsecaseImpl) Update(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error) {
	expiry, err := time.Parse("2006-01-02", input.ExpiryDate)
	if err != nil {
		expiry, err = time.Parse("2006-01-02T15:04:05Z", input.ExpiryDate)
		if err != nil {
			return nil, fmt.Errorf("invalid date format, must be YYYY-MM-DD: %w", err)
		}
	}

	voucher := entity.Voucher{
		ID:              input.ID,
		VoucherCode:     input.VoucherCode,
		DiscountPercent: input.DiscountPercent,
		ExpiryDate:      expiry,
		UpdatedAt:       time.Now(),
		File:            &input.File,
	}

	err = uc.voucherRepository.Update(ctx, &voucher)
	if err != nil {
		return nil, err
	}

	return &dto.VoucherDetail{
		ID:              voucher.ID,
		VoucherCode:     voucher.VoucherCode,
		DiscountPercent: voucher.DiscountPercent,
		ExpiryDate:      voucher.ExpiryDate,
		UpdatedAt:       voucher.UpdatedAt,
	}, nil
}

func (uc *voucherUsecaseImpl) SoftDelete(ctx context.Context, voucherID int, updatedBy string) error {
	return uc.voucherRepository.SoftDeleteVoucher(ctx, voucherID, updatedBy)
}
