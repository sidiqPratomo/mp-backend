package server

import (
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/sidiqPratomo/mp-backend/appvalidator"
	"github.com/sidiqPratomo/mp-backend/config"
	"github.com/sidiqPratomo/mp-backend/handler"
	"github.com/sidiqPratomo/mp-backend/middleware"
	"github.com/sidiqPratomo/mp-backend/util"
	"github.com/sirupsen/logrus"
)

type routerOpts struct {
	Authentication *handler.AuthenticationHandler
	User           *handler.UserHandler
	Voucher        *handler.VoucherHandler
}

type utilOpts struct {
	JwtHelper util.TokenAuthentication
}

func newRouter(h routerOpts, u utilOpts, config *config.Config, log *logrus.Logger) *gin.Engine {
	router := gin.New()

	corsConfig := cors.DefaultConfig()
	corsRouting(router, corsConfig)

	router.ContextWithFallback = true

	appvalidator.AppValidator()

	router.NoRoute(func(c *gin.Context) {
		c.Header("Access-Control-Allow-Origin", "http://localhost:5173")
		c.Header("Access-Control-Allow-Credentials", "true")
		c.JSON(404, gin.H{"error": "route not found"})
	})

	router.Use(
		middleware.Logger(log),
		middleware.RequestIdHandlerMiddleware,
		middleware.ErrorHandlerMiddleware,
		// middleware.NormalizeQuery(),
		gin.Recovery(),
	)
	authMiddleware := middleware.AuthMiddleware(u.JwtHelper, config)

	// userAuthorizationMiddleware := middleware.UserAuthorizationMiddleware
	// doctorAuthorizationMiddleware := middleware.DoctorAuthorizationMiddleware
	// pharmacyManagerAuthorizationMiddleware := middleware.PharmacyManagerAuthorizationMiddleware
	// adminAuthorizationMiddleware := middleware.AdminAuthorizationMiddleware
	// authenticationRouting(router, h.Authentication)

	api := router.Group("/api/v1")
	{
		authenticationRouting(api, h.Authentication, authMiddleware)
		userRouting(api, h.User, authMiddleware)
		voucherRouting(api, h.Voucher, authMiddleware)
		fileRouting(api, h.Voucher)
	}

	return router
}

func corsRouting(router *gin.Engine, configCors cors.Config) {
	configCors.AllowOrigins = []string{"http://localhost:5173"}
	configCors.AllowMethods = []string{"POST", "GET", "PUT", "PATCH", "DELETE"}
	configCors.AllowHeaders = []string{"Origin", "Authorization", "Content-Type", "Accept", "User-Agent", "Cache-Control"}
	configCors.ExposeHeaders = []string{"Content-Length"}
	configCors.AllowCredentials = true
	router.Use(cors.New(configCors))
}

func authenticationRouting(router *gin.RouterGroup, handler *handler.AuthenticationHandler, authMiddleware gin.HandlerFunc) {
	authRouter := router.Group("/auth")

	authRouter.POST("/register-user", handler.RegisterUser)
	authRouter.POST("/verify-registration", handler.VerifyRegisterUser)
	authRouter.POST("/signin", handler.Login)
	authRouter.POST("/verify-otp", handler.VerifyLoginUser)
	authRouter.POST("/refresh", authMiddleware, handler.RefreshToken)
}

func userRouting(router *gin.RouterGroup, handler *handler.UserHandler, authMiddleware gin.HandlerFunc) {
	authRouter := router.Group("/users")

	authRouter.GET("", authMiddleware, handler.IndexUser)
	authRouter.GET("/:id", authMiddleware, handler.ReadUser)
	authRouter.PUT("/:id", authMiddleware, handler.UpdateUser)
	authRouter.PUT("/:id/delete", authMiddleware, handler.DeleteUser)
}

func voucherRouting(router *gin.RouterGroup, handler *handler.VoucherHandler, authMiddleware gin.HandlerFunc) {
	authRouter := router.Group("/vouchers")

	authRouter.GET("", authMiddleware, handler.Index)
	authRouter.GET("/", authMiddleware, handler.Index)
	authRouter.POST("", authMiddleware, handler.Create)
	authRouter.POST("/upload-csv", authMiddleware, handler.UploadCSV)
	authRouter.GET("/:id", authMiddleware, handler.Read)
	authRouter.PUT("/:id", authMiddleware, handler.Update)
	authRouter.PUT("/:id/delete", authMiddleware, handler.Delete)
	authRouter.GET("/export", authMiddleware, handler.ExportCSV)
}

func fileRouting(router *gin.RouterGroup, handler *handler.VoucherHandler) {
	router.GET("/file/download", handler.DownloadFileHandler)
}
