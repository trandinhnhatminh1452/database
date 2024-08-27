-- Table: _flms.team_match

-- DROP TABLE IF EXISTS _flms.team_match;

CREATE TABLE IF NOT EXISTS _flms.team_match
(
    club_name character varying COLLATE pg_catalog."default" NOT NULL,
    match_id character varying COLLATE pg_catalog."default" NOT NULL,
    home_away character varying COLLATE pg_catalog."default",
    goal_scored integer,
    CONSTRAINT team_match_pkey PRIMARY KEY (match_id, club_name),
    CONSTRAINT team_match_club_name_fkey FOREIGN KEY (club_name)
        REFERENCES _flms.teams (club_name) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT team_match_match_id_fkey FOREIGN KEY (match_id)
        REFERENCES _flms.matches (match_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.team_match
    OWNER to postgres;
-- Index: idx_team_match_club_name

-- DROP INDEX IF EXISTS _flms.idx_team_match_club_name;

CREATE INDEX IF NOT EXISTS idx_team_match_club_name
    ON _flms.team_match USING btree
    (club_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: idx_team_match_match_id

-- DROP INDEX IF EXISTS _flms.idx_team_match_match_id;

CREATE INDEX IF NOT EXISTS idx_team_match_match_id
    ON _flms.team_match USING btree
    (match_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;