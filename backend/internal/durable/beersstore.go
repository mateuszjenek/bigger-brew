package durable

import (
	"context"
	"fmt"

	"beers_repository_service/internal/models"
	"beers_repository_service/internal/session"

	"github.com/sirupsen/logrus"
)

const (
	queryCreateTableBeer = "CREATE TABLE IF NOT EXISTS beer (id INTEGER PRIMARY KEY AUTOINCREMENT, product_code VARCHAR(255) NOT NULL, name VARCHAR(255) NOT NULL, quantity INTEGER NOT NULL, price FLOAT NOT NULL)"
	queryInsertBeer      = "INSERT INTO beer (product_code, name, quantity, price) VALUES ($1, $2, $3, $4)"
	querySelectBeerByID  = "SELECT id, product_code, name, quantity, price FROM beer WHERE id = $1"
	querySelectBeer      = "SELECT id, product_code, name, quantity, price FROM beer"
	queryUpdateBeer      = "UPDATE beer SET product_code = $1, name = $2, quantity = $3, price = $4 WHERE id = $5"
	queryDeleteBeer      = "DELETE FROM beer WHERE id = $1"
)

type BeersStore interface {
	GetBeers(ctx context.Context) ([]*models.Beer, error)
	GetBeer(ctx context.Context, id int) (*models.Beer, error)
	RegisterBeer(ctx context.Context, beer *models.Beer) (*models.Beer, error)
	UpdateBeer(ctx context.Context, beer *models.Beer) error
	DeleteBeer(ctx context.Context, id int) error
}

func (s *store) createBeersStore() error {
	_, err := s.db.Exec(queryCreateTableBeer)
	if err != nil {
		return fmt.Errorf("error while creating beer table in database: %v", err)
	}
	logrus.Info("Successfully initialized beer table")
	return nil
}

func (s *store) GetBeers(ctx context.Context) ([]*models.Beer, error) {
	rows, err := s.db.Query(querySelectBeer)
	if err != nil {
		return nil, fmt.Errorf("error while geting rows: %v", err)
	}
	defer rows.Close()

	var beers []*models.Beer

	for rows.Next() {
		beer := &models.Beer{}
		err = rows.Scan(&beer.ID, &beer.ProductCode, &beer.Name, &beer.Quantity, &beer.Price)
		if err != nil {
			return nil, fmt.Errorf("error while scanning row: %v", err)
		}
		beers = append(beers, beer)
	}

	return beers, nil
}

func (s *store) GetBeer(ctx context.Context, id int) (*models.Beer, error) {
	row := s.db.QueryRow(querySelectBeerByID, id)
	beer := &models.Beer{}
	err := row.Scan(&beer.ID, &beer.ProductCode, &beer.Name, &beer.Quantity, &beer.Price)
	if err != nil {
		return nil, fmt.Errorf("error while scanning row: %v", err)
	}
	return beer, nil
}

func (s *store) RegisterBeer(ctx context.Context, beer *models.Beer) (*models.Beer, error) {
	result, err := s.db.Exec(queryInsertBeer, beer.ProductCode, beer.Name, beer.Quantity, beer.Price)
	if err != nil {
		return nil, fmt.Errorf("error while inserting beer to table beer: %v", err)
	}
	rowsAffected, err := result.RowsAffected()
	if err != nil {
		return nil, fmt.Errorf("error while getting number of affected rows: %v", err)
	}
	id, err := result.LastInsertId()
	if err != nil {
		return nil, fmt.Errorf("error while getting last inserted id: %v", err)
	}
	session.Logger(ctx).WithField("rowsAffected", rowsAffected).Info("Succesfully added beer to database")

	return s.GetBeer(ctx, int(id))
}

func (s *store) UpdateBeer(ctx context.Context, beer *models.Beer) error {
	result, err := s.db.Exec(queryUpdateBeer, beer.ProductCode, beer.Name, beer.Quantity, beer.Price, beer.ID)
	if err != nil {
		return fmt.Errorf("error while updating beer in table beer: %v", err)
	}
	rowsAffected, err := result.RowsAffected()
	if err != nil {
		return fmt.Errorf("error while getting number of affected rows: %v", err)
	}
	session.Logger(ctx).WithField("rowsAffected", rowsAffected).Debug("Succesfully updated beer in database")
	return nil
}

func (s *store) DeleteBeer(ctx context.Context, id int) error {
	result, err := s.db.Exec(queryDeleteBeer, id)
	if err != nil {
		return fmt.Errorf("error while deleting beer in table beer: %v", err)
	}
	rowsAffected, err := result.RowsAffected()
	if err != nil {
		return fmt.Errorf("error while getting number of affected rows: %v", err)
	}
	session.Logger(ctx).WithField("rowsAffected", rowsAffected).Debug("Succesfully deleted beer in database")
	return nil
}
