package handler

import (
	"fmt"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/sidiqPratomo/mp-backend/dto"
	"github.com/sidiqPratomo/mp-backend/usecase"
)

type VoucherHandler struct {
	voucherUsecase usecase.VoucherUsecase
}

func NewVoucherHandler(voucherUsecase usecase.VoucherUsecase) VoucherHandler {
	return VoucherHandler{
		voucherUsecase: voucherUsecase,
	}
}

func (h *VoucherHandler) Index(c *gin.Context) {
	log.Println("🔵 Reached GET /voucher handler")
	var query dto.QueryParams
	if err := c.BindQuery(&query); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.voucherUsecase.Index(c.Request.Context(), query)
	if err != nil {
		log.Println("get error:", err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"status":  false,
			"message": "failed to get vouchers",
			"code":    500,
		})
		return
	}

	c.JSON(http.StatusOK, resp)
}

// handler/voucher_handler.go
func (h *VoucherHandler) UploadCSV(c *gin.Context) {
	file, err := c.FormFile("file")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"message": "File is required"})
		return
	}

	bucket := c.PostForm("bucket")
	if bucket == "" {
		bucket = "files"
	}

	path := c.PostForm("path")
	if path == "" {
		path = "csv"
	}

	filename, err := h.voucherUsecase.UploadCSV(c.Request.Context(), file, bucket, path)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"message": err.Error()})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"status":  true,
		"message": "CSV uploaded successfully",
		"data": map[string]string{
			"bucket":   bucket,
			"path":     path,
			"filename": filename,
		},
	})
}

// GET /vouchers/:id
func (h *VoucherHandler) Read(c *gin.Context) {
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil || id < 1 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid ID"})
		return
	}

	data, err := h.voucherUsecase.Read(c.Request.Context(), id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "voucher not found"})
		return
	}

	c.JSON(http.StatusOK, gin.H{"status": true, "data": data})
}

// POST /vouchers
func (h *VoucherHandler) Create(c *gin.Context) {
	var input dto.UpdateVoucherRequest
	if err := c.ShouldBindJSON(&input); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	data, err := h.voucherUsecase.Create(c.Request.Context(), input)
	if err != nil {
		log.Println("create error:", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to create voucher"})
		return
	}

	c.JSON(http.StatusCreated, gin.H{"status": true, "data": data})
}

// PUT /vouchers/:id
func (h *VoucherHandler) Update(c *gin.Context) {
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil || id < 1 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid ID"})
		return
	}

	var input dto.UpdateVoucherRequest
	if err := c.ShouldBindJSON(&input); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	input.ID = id
	data, err := h.voucherUsecase.Update(c.Request.Context(), input)
	if err != nil {
		log.Println("update error:", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to update voucher"})
		return
	}

	c.JSON(http.StatusOK, gin.H{"status": true, "data": data})
}

// DELETE /vouchers/:id
func (h *VoucherHandler) Delete(c *gin.Context) {
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil || id < 1 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid ID"})
		return
	}

	// Get from dummy token if needed
	updatedBy := c.GetHeader("X-User") // example header

	if updatedBy == "" {
		updatedBy = "system"
	}

	err = h.voucherUsecase.SoftDelete(c.Request.Context(), id, updatedBy)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to delete voucher"})
		return
	}

	c.JSON(http.StatusOK, gin.H{"status": true, "message": "voucher deleted"})
}

func (h *VoucherHandler) DownloadFileHandler(c *gin.Context) {
	bucket := c.Query("bucket")
	path := c.Query("path")
	filename := c.Query("filename")

	if bucket == "" || path == "" || filename == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "bucket, path, and filename are required"})
		return
	}

	filePath := filepath.Join("storage", bucket, path, filename)

	if _, err := os.Stat(filePath); os.IsNotExist(err) {
		c.JSON(http.StatusNotFound, gin.H{"error": "file not found"})
		return
	}

	c.Header("Content-Disposition", fmt.Sprintf("attachment; filename=\"%s\"", filename))
	c.Header("Content-Type", "application/octet-stream")
	c.File(filePath)
}

func (h *VoucherHandler) ExportCSV(c *gin.Context) {
	c.Header("Content-Disposition", "attachment; filename=vouchers.csv")
	c.Header("Content-Type", "text/csv")

	if err := h.voucherUsecase.ExportCSV(c.Writer, c.Request.Context()); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
	}
}