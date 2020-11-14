package session

import (
	"fmt"
	"net/http"
)

type Error struct {
	StatusCode  int
	Description string
}

func (sessionError Error) Error() string {
	return fmt.Sprintf("%s. Status Code: %d", sessionError.Description, sessionError.StatusCode)
}

func AuthenticationError() Error {
	return Error{
		Description: "Unauthorized access, chceck credentials",
		StatusCode:  http.StatusUnauthorized,
	}
}

func ServerError(err error) Error {
	return Error{
		Description: err.Error(),
		StatusCode:  http.StatusInternalServerError,
	}
}

func NotFoundError() Error {
	return Error{
		Description: "Resource not found",
		StatusCode:  http.StatusNotFound,
	}
}
