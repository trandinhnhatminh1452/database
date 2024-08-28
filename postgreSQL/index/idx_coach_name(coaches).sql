-- Index: idx_coach_name

-- DROP INDEX IF EXISTS _flms.idx_coach_name;

CREATE INDEX IF NOT EXISTS idx_coach_name
    ON _flms.coaches USING btree
    (coach_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
