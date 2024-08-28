-- Index: idx_begin_date

-- DROP INDEX IF EXISTS _flms.idx_begin_date;

CREATE INDEX IF NOT EXISTS idx_begin_date
    ON _flms.player_team USING btree
    (begin ASC NULLS LAST)
    TABLESPACE pg_default;
