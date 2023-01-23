CREATE FUNCTION gen_versionId() RETURNS trigger AS $gen_versionId$
      BEGIN
          IF NEW.id  IS NULL THEN
              RAISE EXCEPTION 'id is null';
          END IF;
          IF NEW.version IS NULL THEN
              RAISE EXCEPTION 'version is null';
          END IF;  

          NEW.row_id := CONCAT_WS('_',NEW.id,NEW.version);
          RETURN NEW;
      END;
$gen_versionId$ LANGUAGE plpgsql;

CREATE TRIGGER gen_versionId BEFORE INSERT OR UPDATE ON public.doc
    FOR EACH ROW EXECUTE FUNCTION gen_versionId();
