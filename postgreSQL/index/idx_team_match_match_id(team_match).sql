-- Index: idx_team_match_match_id

-- DROP INDEX IF EXISTS _flms.idx_team_match_match_id;

CREATE INDEX IF NOT EXISTS idx_team_match_match_id
    ON _flms.team_match USING btree
    (match_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
