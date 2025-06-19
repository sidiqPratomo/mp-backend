package dto

import "github.com/sidiqPratomo/mp-backend/entity"

type QueryParams struct {
	Limit     int32  `form:"limit"`
	Offset    int32  `form:"offset"`
	SortBy    string `form:"sortBy"`
	SortOrder string `form:"sortOrder"`
	Status    *int  `form:"status"`
}

func (q QueryParams) ToVoucherQuery() entity.VoucherQuery {
	return entity.VoucherQuery{
		Limit:     int(q.Limit),
		Offset:    int(q.Offset),
		SortBy:    q.SortBy,
		SortOrder: q.SortOrder,
		Status:    (*int)(q.Status),
	}
}