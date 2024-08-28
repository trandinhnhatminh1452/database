-- Index: idx_end_date

-- DROP INDEX IF EXISTS _flms.idx_end_date;

CREATE INDEX IF NOT EXISTS idx_end_date
    ON _flms.player_team USING btree
    ("end" ASC NULLS LAST)
    TABLESPACE pg_default;
