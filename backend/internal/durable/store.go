package durable

import "database/sql"

type store struct {
	db *sql.DB
}

func (s *store) Close() {
	s.db.Close()
}
