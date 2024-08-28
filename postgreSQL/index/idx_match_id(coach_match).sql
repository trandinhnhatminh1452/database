-- Index: idx_match_id

-- DROP INDEX IF EXISTS _flms.idx_match_id;

CREATE INDEX IF NOT EXISTS idx_match_id
    ON _flms.coach_match USING btree
    (match_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
