package views

import (
	"beers_repository_service/internal/models"
	"net/http"
)

type beerResponse struct {
	ID          int     `json:"id"`
	Name        string  `json:"name"`
	ProductCode string  `json:"productCode"`
	Price       float64 `json:"price"`
	Quantity    int     `json:"quantity"`
}

func RenderBeers(w http.ResponseWriter, beers []*models.Beer) {
	response := make([]beerResponse, 0, len(beers))
	for _, beer := range beers {
		response = append(response, beerToResponse(beer))
	}
	RenderResponse(w, http.StatusOK, response)
}

func RenderBeer(w http.ResponseWriter, beer *models.Beer) {
	RenderResponse(w, http.StatusOK, beerToResponse(beer))
}

func beerToResponse(beer *models.Beer) beerResponse {
	return beerResponse{
		ID:          beer.ID,
		Name:        beer.Name,
		ProductCode: beer.ProductCode,
		Price:       beer.Price,
		Quantity:    beer.Quantity,
	}
}
