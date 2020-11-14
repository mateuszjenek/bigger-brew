package durable

import (
	"database/sql"
	"fmt"

	// SQLite3 database driver
	_ "github.com/mattn/go-sqlite3"
)

// Datastore aggregates all Store interfaces
type Datastore interface {
	BeersStore

	Close()
}

// OpenDatastore initalize datastore object
func OpenDatastore(datasource string) (Datastore, error) {
	db, err := sql.Open("sqlite3", datasource)
	if err != nil {
		return nil, fmt.Errorf("error while creating handler to database: %v", err)
	}
	db.SetConnMaxLifetime(0)
	db.SetMaxIdleConns(50)
	db.SetMaxOpenConns(50)

	if err = db.Ping(); err != nil {
		return nil, fmt.Errorf("error while connecting to database: %v", err)
	}

	datastore := &store{db}
	err = datastore.createBeersStore()
	if err != nil {
		return nil, fmt.Errorf("error while creating beers store: %v", err)
	}

	return datastore, nil
}
