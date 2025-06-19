package server

import (
	"context"
	"database/sql"
	"fmt"
	"net/http"
	"os"
	"os/signal"
	"strconv"
	"syscall"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
	"github.com/sidiqPratomo/mp-backend/config"
	"github.com/sidiqPratomo/mp-backend/database"
	"github.com/sidiqPratomo/mp-backend/handler"
	"github.com/sidiqPratomo/mp-backend/repository"
	"github.com/sidiqPratomo/mp-backend/usecase"
	"github.com/sidiqPratomo/mp-backend/util"
	"github.com/sirupsen/logrus"
)

func createRouter(log *logrus.Logger, config *config.Config) *gin.Engine {
	db := database.ConnectDB(config, log)

	userRepository := repository.NewUserRepositoryDB(db)
	tokenRepository := repository.NewRefreshTokenRepositoryDB(db)
	transaction := repository.NewSqlTransaction(db)
	emailHelper := util.NewEmailHelperIpl(config)
	hashHelper := &util.HashHelperImpl{}
	jwtAuthentication := util.JwtAuthentication{
		Config: *config,
		Method: jwt.SigningMethodHS256,
	}

	authenticationUsecase := usecase.NewAuthenticationUsecaseImpl(usecase.AuthenticationUsecaseImplOpts{
		Transaction:            transaction,
		HashHelper:             hashHelper,
		JwtHelper:              jwtAuthentication,
		EmailHelper:            &emailHelper,
		UserRepository:         &userRepository,
		RefreshTokenRepository: &tokenRepository,
	})
	userUsercase := usecase.NewUserUsecaseImpl(usecase.UserUsecaseImplOpts{
		UserRepository: &userRepository,
		Transaction:    transaction,
		JwtHelper:      jwtAuthentication,
	})

	authenticationHandler := handler.NewAuthenticationHandler(&authenticationUsecase)
	userHandler := handler.NewUserHandler(&userUsercase)

	return newRouter(
		routerOpts{
			Authentication: &authenticationHandler,
			User:           &userHandler,
		},
		utilOpts{
			JwtHelper: jwtAuthentication,
		},
		config,
		log,
	)
}

func Init() {
	log := util.NewLogger()

	config := config.Init(log)

	router := createRouter(log, config)

	srv := http.Server{
		Handler: router,
		Addr:    config.Host + config.Port,
	}

	go func() {
		if err := srv.ListenAndServe(); err != nil && err != http.ErrServerClosed {
			log.Fatalf("listen: %s\n", err)
		}
	}()

	quit := make(chan os.Signal, 10)

	signal.Notify(quit, syscall.SIGINT, syscall.SIGTERM)

	<-quit
	log.Info("Shutdown Server ...")

	ctx, cancel := context.WithTimeout(context.Background(), time.Duration(config.GracefulPeriod)*time.Second)
	defer cancel()

	if err := srv.Shutdown(ctx); err != nil {
		log.Fatalf("Server shutdown: %s", err.Error())
	}

	<-ctx.Done()

	log.Infof("Timeout of " + strconv.Itoa(config.GracefulPeriod) + " seconds")
	log.Info("Server exiting")
}

// TestQuery is a simple function to test DB connection
func TestQuery(db *sql.DB) error {
	var (
		name string
	)

	q := `SELECT DATABASE()` // MySQL query to get the current database name

	rows, err := db.Query(q)
	if err != nil {
		return err
	}
	defer rows.Close()

	for rows.Next() {
		err := rows.Scan(&name)
		if err != nil {
			return err
		}
		fmt.Printf("name: %s\n", name)
	}

	err = rows.Err()
	if err != nil {
		return err
	}
	return nil
}
