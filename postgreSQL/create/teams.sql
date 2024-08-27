-- Table: _flms.teams

-- DROP TABLE IF EXISTS _flms.teams;

CREATE TABLE IF NOT EXISTS _flms.teams
(
    club_name character varying COLLATE pg_catalog."default" NOT NULL,
    point integer,
    goal_difference integer,
    "position" integer,
    stadium_name character varying COLLATE pg_catalog."default",
    club_code character varying COLLATE pg_catalog."default",
    won smallint,
    drawn smallint,
    lost smallint,
    played smallint,
    CONSTRAINT "Teams_pkey" PRIMARY KEY (club_name),
    CONSTRAINT teams_stadium_name_fkey FOREIGN KEY (stadium_name)
        REFERENCES _flms.stadiums (stadium_name) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.teams
    OWNER to postgres;

-- Trigger: validate_team_limit_trigger

-- DROP TRIGGER IF EXISTS validate_team_limit_trigger ON _flms.teams;

CREATE OR REPLACE TRIGGER validate_team_limit_trigger
    BEFORE INSERT
    ON _flms.teams
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_team_limit();