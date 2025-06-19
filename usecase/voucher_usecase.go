package usecase

import (
	"context"
	"time"

	"github.com/sidiqPratomo/mp-backend/dto"
	"github.com/sidiqPratomo/mp-backend/entity"
	"github.com/sidiqPratomo/mp-backend/repository"
)

type VoucherUsecase interface {
	Index(ctx context.Context, params dto.QueryParams) (*dto.ResponseIndex[dto.PagedResult[dto.VoucherDetail]], error)
	Read(ctx context.Context, voucherID int) (*dto.VoucherDetail, error)
	Create(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error)
	Update(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error)
	SoftDelete(ctx context.Context, voucherID int, updatedBy string) error
}

type voucherUsecaseImpl struct {
	voucherRepository repository.VoucherRepository
	transaction    repository.Transaction
}

type VoucherUsecaseImplOpts struct {
	VoucherRepository repository.VoucherRepository
	Transaction    repository.Transaction
}

func NewVoucherUsecaseImpl(opts VoucherUsecaseImplOpts) voucherUsecaseImpl {
	return voucherUsecaseImpl{
		voucherRepository: opts.VoucherRepository,
		transaction:    opts.Transaction,
	}
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
	}, nil
}

func (uc *voucherUsecaseImpl) Create(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error) {
	voucher := entity.Voucher{
		VoucherCode:     input.VoucherCode,
		DiscountPercent: input.DiscountPercent,
		ExpiryDate:      input.ExpiryDate,
		CreatedAt:       time.Now(),
		UpdatedAt:       time.Now(),
	}
	err := uc.voucherRepository.Create(ctx, &voucher)
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
	}, nil
}

func (uc *voucherUsecaseImpl) Update(ctx context.Context, input dto.UpdateVoucherRequest) (*dto.VoucherDetail, error) {
	voucher := entity.Voucher{
		ID:              input.ID,
		VoucherCode:     input.VoucherCode,
		DiscountPercent: input.DiscountPercent,
		ExpiryDate:      input.ExpiryDate,
		UpdatedAt:       time.Now(),
	}

	err := uc.voucherRepository.Update(ctx, &voucher)
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