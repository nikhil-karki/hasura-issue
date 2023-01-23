CREATE TABLE "public"."doc_item" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "version" text NOT NULL, "row_id" text NOT NULL, "title" text NOT NULL, PRIMARY KEY ("id","version") , UNIQUE ("row_id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
