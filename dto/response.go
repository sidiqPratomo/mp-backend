package dto

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/sidiqPratomo/mp-backend/appconstant"
)

type Response struct {
	Message string `json:"message"`
	Data    any    `json:"data,omitempty"`
}

type ErrorResponse struct {
	Message string                   `json:"message"`
	Details []ValidationErrorDetails `json:"details,omitempty"`
}

type ValidationErrorDetails struct {
	Field   string `json:"field"`
	Message string `json:"message"`
}

type ResponseIndex[T any] struct {
	Status  bool `json:"status"`
	Data    T    `json:"data"`
	Message string `json:"message"`
	Code    int    `json:"code"`
}

type PagedResult[T any] struct {
	Result []T `json:"result"`
	Count  int `json:"count"`
}

func ResponseOK(ctx *gin.Context, res any) {
	ctx.JSON(http.StatusOK, Response{Message: appconstant.MsgOK, Data: res})
}

func ResponseCreated(ctx *gin.Context, res any) {
	ctx.JSON(http.StatusCreated, Response{Message: appconstant.MsgCreated, Data: res})
}

func ResponseRegister(ctx *gin.Context, res any) {
	ctx.JSON(http.StatusCreated, Response{Message: appconstant.MsgCheckEmailRegister, Data: res})
}

func ResponseVerifRegister(ctx *gin.Context, res any) {
	ctx.JSON(http.StatusCreated, Response{Message: appconstant.MsgVerifyRegister, Data: res})
}

func ResponseLogin(ctx *gin.Context, res any) {
	ctx.JSON(http.StatusCreated, Response{Message: appconstant.MsgCheckEmailLogin, Data: res})
}
