alter table "public"."doc" drop constraint "doc_pkey";
alter table "public"."doc"
    add constraint "doc_pkey"
    primary key ("id", "version");
