package controllers

import (
	"beers_repository_service/internal/views"
	"net/http"

	"github.com/gorilla/mux"
)

type healthController struct {}

func registerHealthEndponts(router *mux.Router) {
	endpoints := &healthController{}

	router.HandleFunc("/health", endpoints.get).Methods(http.MethodGet)
}

func (endpoint *healthController) get(w http.ResponseWriter, r *http.Request) {
	views.RenderResponse(w, http.StatusOK, "Beer Repository Service v1.0.0")
}