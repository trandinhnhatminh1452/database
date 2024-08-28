-- Index: idx_ref_id

-- DROP INDEX IF EXISTS _flms.idx_ref_id;

CREATE INDEX IF NOT EXISTS idx_ref_id
    ON _flms.ref_match USING btree
    (ref_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
