package middlewares

import (
	"beers_repository_service/internal/session"
	"beers_repository_service/internal/views"
	"context"
	"fmt"
	"log"
	"net/http"
	"strings"

	firebase "firebase.google.com/go"
	"firebase.google.com/go/auth"

	"google.golang.org/api/option"
)

var whitelist = []string{
	"/health",
}

type AuthMiddleware struct {
	service *auth.Client
}

func CreateAuthMiddleware() (*AuthMiddleware, error) {
	opt := option.WithCredentialsFile("univiersity-firebase-adminsdk-hgmxp-6f019609dc.json")
	app, err := firebase.NewApp(context.Background(), nil, opt)
	if err != nil {
		return nil, fmt.Errorf("error initializing firebase app: %v\n", err)
	}
	service, err := app.Auth(context.Background())
	if err != nil {
		log.Fatalf("error getting Auth client: %v\n", err)
	}
	return &AuthMiddleware{service}, nil
}

func (m *AuthMiddleware) Authenticate(handler http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if isEndpointWhitelisted(r.RequestURI) {
			handler.ServeHTTP(w, r)
			return
		}

		header := r.Header.Get("Authorization")
		if !strings.HasPrefix(header, "Bearer ") {
			views.RenderError(w, session.AuthenticationError())
			return
		}

		tokenString := header[7:]

		token, err := m.service.VerifyIDToken(r.Context(), tokenString)
		if err != nil {
			views.RenderError(w, session.AuthenticationError())
			return
		}
		ctx := session.WithToken(r.Context(), token)
		handler.ServeHTTP(w, r.WithContext(ctx))
		return
	})
}

func AdminOnly(handlerFunc http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		token := session.Token(r.Context())
		admin := token.Claims["admin"]
		if admin == nil {
			views.RenderError(w, session.AuthenticationError())
			return
		}
		if !admin.(bool) {
			views.RenderError(w, session.AuthenticationError())
			return
		}
		handlerFunc(w, r)
	}
}

func isEndpointWhitelisted(uri string) bool {
	for _, endpoint := range whitelist {
		if uri == endpoint {
			return true
		}
	}
	return false
}
