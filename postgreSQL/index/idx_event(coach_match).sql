-- Index: idx_event

-- DROP INDEX IF EXISTS _flms.idx_event;

CREATE INDEX IF NOT EXISTS idx_event
    ON _flms.coach_match USING btree
    (event COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
