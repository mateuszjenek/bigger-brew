package main

import (
	"beers_repository_service/internal/controllers"
	"beers_repository_service/internal/durable"
	"beers_repository_service/internal/middlewares"
	"net/http"
	"time"

	"github.com/gorilla/mux"
	"github.com/sirupsen/logrus"
)

func main() {
	logrus.SetLevel(logrus.DebugLevel)
	logrus.Info("Starting Beer Repository Service")

	datastore, err := durable.OpenDatastore("./development.db")
	if err != nil {
		logrus.Errorf("Error while opening datastore: %v", err)
		return
	}
	defer datastore.Close()

	authMiddleware, err := middlewares.CreateAuthMiddleware()
	if err != nil {
		logrus.Fatalf("Error while creating Auth middleware: %v", err)
	}

	router := &mux.Router{}
	router.Use(middlewares.EnableCors)
	router.Use(middlewares.Logger)
	router.Use(authMiddleware.Authenticate)

	controllers.Register(datastore, router)

	srv := http.Server{
		//Addr:         "192.168.1.41:8080",
		Handler:      router,
		WriteTimeout: 15 * time.Second,
		ReadTimeout:  15 * time.Second,
	}
	logrus.Fatal(srv.ListenAndServe())
}
