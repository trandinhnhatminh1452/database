-- Index: idx_club_name

-- DROP INDEX IF EXISTS _flms.idx_club_name;

CREATE INDEX IF NOT EXISTS idx_club_name
    ON _flms.coach_match USING btree
    (club_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
