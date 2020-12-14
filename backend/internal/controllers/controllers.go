package controllers

import (
	"beers_repository_service/internal/durable"

	"github.com/gorilla/mux"
)

// Register is responsible for registration all service's endpoints
func Register(store durable.Datastore, router *mux.Router) {
	registerBeersEndpoints(store, router)
	registerHealthEndponts(router)
}
