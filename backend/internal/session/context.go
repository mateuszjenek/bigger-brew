package session

import (
	"context"

	"firebase.google.com/go/auth"
	"github.com/sirupsen/logrus"
)

type contextValueKey int

const (
	contextKeyLogger contextValueKey = iota
	contextKeyToken
)

func Logger(ctx context.Context) *logrus.Entry {
	v, _ := ctx.Value(contextKeyLogger).(*logrus.Entry)
	return v
}

func WithLogger(ctx context.Context, logger *logrus.Entry) context.Context {
	return context.WithValue(ctx, contextKeyLogger, logger)
}

func Token(ctx context.Context) *auth.Token {
	v, _ := ctx.Value(contextKeyToken).(*auth.Token)
	return v
}

func WithToken(ctx context.Context, token *auth.Token) context.Context {
	return context.WithValue(ctx, contextKeyToken, token)
}
