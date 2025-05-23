// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0

package repo

import (
	"context"
)

type Querier interface {
	CreateMessage(ctx context.Context, arg CreateMessageParams) (Message, error)
	CreateThread(ctx context.Context, arg CreateThreadParams) (Thread, error)
	EditMessage(ctx context.Context, arg EditMessageParams) ([]Message, error)
	GetMessageByID(ctx context.Context, id string) (Message, error)
	GetMessagesByThread(ctx context.Context, threadID string) ([]Message, error)
	DeleteMessage(ctx context.Context,id string) error
}

var _ Querier = (*Queries)(nil)
