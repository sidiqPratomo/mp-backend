package dto

import "github.com/sidiqPratomo/mp-backend/entity"

type QueryParams struct {
	Limit     int32  `form:"limit"`
	Skip    int32  `form:"skip"`
	SortBy    string `form:"sortBy"`
	SortOrder string `form:"sortOrder"`
	Status    *int  `form:"status"`
}

func (q QueryParams) ToVoucherQuery() entity.VoucherQuery {
	return entity.VoucherQuery{
		Limit:     int(q.Limit),
		Skip:    int(q.Skip),
		SortBy:    q.SortBy,
		SortOrder: q.SortOrder,
		Status:    (*int)(q.Status),
	}
}