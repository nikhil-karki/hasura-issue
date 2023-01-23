alter table "public"."doc_item"
  add constraint "doc_item_docId_fkey"
  foreign key ("docId")
  references "public"."doc"
  ("row_id") on update restrict on delete restrict;
