
-- creating the thread table 

CREATE TABLE "thread" (

    "id" VARCHAR(36) PRIMARY KEY DEFAULT gen_random_uuid()::varchar(36),
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE "message" (

  "id" VARCHAR(36) PRIMARY KEY DEFAULT gen_random_uuid()::varchar(36),
  "thread_id" VARCHAR(36) NOT NULL,                      -- thread id for the foreign key
  "sender" VARCHAR(100) NOT NULL,
  "content" TEXT NOT NULL,
  "created_at" TIMESTAMP DEFAULT now(),

  -- foreign key constraint to reference the thread table

  FOREIGN KEY ("thread_id") REFERENCEs thread("id")
);


