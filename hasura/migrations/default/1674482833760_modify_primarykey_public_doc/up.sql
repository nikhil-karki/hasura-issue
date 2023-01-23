BEGIN TRANSACTION;
ALTER TABLE "public"."doc" DROP CONSTRAINT "doc_pkey";

ALTER TABLE "public"."doc"
    ADD CONSTRAINT "doc_pkey" PRIMARY KEY ("id", "version");
COMMIT TRANSACTION;
