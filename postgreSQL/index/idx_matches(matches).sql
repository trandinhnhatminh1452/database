-- Index: idx_matches

-- DROP INDEX IF EXISTS _flms.idx_matches;

CREATE INDEX IF NOT EXISTS idx_matches
    ON _flms.matches USING btree
    (match_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
