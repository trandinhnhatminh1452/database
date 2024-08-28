-- Index: idx_team_match_club_name

-- DROP INDEX IF EXISTS _flms.idx_team_match_club_name;

CREATE INDEX IF NOT EXISTS idx_team_match_club_name
    ON _flms.team_match USING btree
    (club_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
