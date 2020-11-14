package controllers

import (
	"beers_repository_service/internal/durable"
	"beers_repository_service/internal/middlewares"
	"beers_repository_service/internal/models"
	"beers_repository_service/internal/session"
	"beers_repository_service/internal/views"
	"encoding/json"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

type beersEndpoints struct {
	store durable.BeersStore
}

func registerBeersEndpoints(store durable.BeersStore, router *mux.Router) {
	endpoints := &beersEndpoints{store}

	router.HandleFunc("/beers", endpoints.get).Methods(http.MethodGet)
	router.HandleFunc("/beers", endpoints.post).Methods(http.MethodPost)
	router.HandleFunc("/beers/{id}", endpoints.postWithID).Methods(http.MethodPost)
	router.HandleFunc("/beers/{id}", endpoints.patch).Methods(http.MethodPatch)
	router.HandleFunc("/beers/{id}", middlewares.AdminOnly(endpoints.delete)).Methods(http.MethodDelete)
}

func (endpoint *beersEndpoints) get(w http.ResponseWriter, r *http.Request) {
	beers, err := endpoint.store.GetBeers(r.Context())
	if err != nil {
		views.RenderError(w, err)
		return
	}
	views.RenderBeers(w, beers)
}

func (endpoint *beersEndpoints) post(w http.ResponseWriter, r *http.Request) {
	var body struct {
		Name        string  `json:"name"`
		ProductCode string  `json:"productCode"`
		Price       float64 `json:"price"`
	}

	if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
		views.RenderError(w, err)
		return
	}

	beer := &models.Beer{Name: body.Name, ProductCode: body.ProductCode, Price: body.Price, Quantity: 0}
	beer, err := endpoint.store.RegisterBeer(r.Context(), beer)
	if err != nil {
		views.RenderError(w, err)
		return
	}
	views.RenderBeer(w, beer)
}

func (endpoint *beersEndpoints) postWithID(w http.ResponseWriter, r *http.Request) {
	idStr := mux.Vars(r)["id"]
	id, err := strconv.Atoi(idStr)
	if err != nil {
		views.RenderError(w, err)
		return
	}

	var body struct {
		Name        string  `json:"name"`
		ProductCode string  `json:"productCode"`
		Price       float64 `json:"price"`
	}

	if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
		views.RenderError(w, err)
		return
	}

	beer, err := endpoint.store.GetBeer(r.Context(), id)
	if err != nil {
		views.RenderError(w, session.NotFoundError())
		return
	}

	beer.Name = body.Name
	beer.Price = body.Price
	beer.ProductCode = body.ProductCode

	err = endpoint.store.UpdateBeer(r.Context(), beer)
	if err != nil {
		views.RenderError(w, err)
		return
	}
	views.RenderBeer(w, beer)
}

func (endpoint *beersEndpoints) patch(w http.ResponseWriter, r *http.Request) {
	idStr := mux.Vars(r)["id"]
	id, err := strconv.Atoi(idStr)
	if err != nil {
		views.RenderError(w, err)
		return
	}

	var body struct {
		Change int `json:"change"`
	}

	if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
		views.RenderError(w, err)
		return
	}

	beer, err := endpoint.store.GetBeer(r.Context(), id)
	if err != nil {
		views.RenderError(w, session.NotFoundError())
		return
	}

	beer.Quantity += body.Change
	if beer.Quantity < 0 {
		beer.Quantity = 0
	}

	err = endpoint.store.UpdateBeer(r.Context(), beer)
	if err != nil {
		views.RenderError(w, err)
		return
	}

	views.RenderBeer(w, beer)
}

func (endpoint *beersEndpoints) delete(w http.ResponseWriter, r *http.Request) {
	idStr := mux.Vars(r)["id"]
	id, err := strconv.Atoi(idStr)
	if err != nil {
		views.RenderError(w, err)
		return
	}

	err = endpoint.store.DeleteBeer(r.Context(), id)
	if err != nil {
		views.RenderError(w, err)
		return
	}
}
