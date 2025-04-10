-- name: CreateMessage :one
INSERT INTO message (thread_id, sender, content)
VALUES ($1, $2, $3)
RETURNING *;

-- name: GetMessageByID :one
SELECT * FROM message
WHERE id = $1;

-- name: GetMessagesByThread :many
SELECT * FROM message
WHERE thread_id = $1
ORDER BY created_at DESC;


-- name: EditMessage :many
UPDATE message
SET content = $1,
    sender = $2
 WHERE id = $3
 RETURNING *;

-- name: CreateThread :one
INSERT INTO "thread" (thread)
VALUES($1)
RETURNING *;