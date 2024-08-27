-- Table: _flms.player_team

-- DROP TABLE IF EXISTS _flms.player_team;

CREATE TABLE IF NOT EXISTS _flms.player_team
(
    club_name character varying COLLATE pg_catalog."default" NOT NULL,
    begin date DEFAULT now(),
    "end" date,
    player_id bigint,
    shirt_number smallint,
    CONSTRAINT unique_club_shirt UNIQUE (club_name, shirt_number),
    CONSTRAINT player_team_club_name_fkey FOREIGN KEY (club_name)
        REFERENCES _flms.teams (club_name) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION,
    CONSTRAINT player_team_player_id_fkey FOREIGN KEY (player_id)
        REFERENCES _flms.players (player_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.player_team
    OWNER to postgres;
-- Index: idx_begin_date

-- DROP INDEX IF EXISTS _flms.idx_begin_date;

CREATE INDEX IF NOT EXISTS idx_begin_date
    ON _flms.player_team USING btree
    (begin ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: idx_end_date

-- DROP INDEX IF EXISTS _flms.idx_end_date;

CREATE INDEX IF NOT EXISTS idx_end_date
    ON _flms.player_team USING btree
    ("end" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: validate_contract_overlap_trigger

-- DROP TRIGGER IF EXISTS validate_contract_overlap_trigger ON _flms.player_team;

CREATE OR REPLACE TRIGGER validate_contract_overlap_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.player_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_contract_overlap();

-- Trigger: validate_player_limit_trigger

-- DROP TRIGGER IF EXISTS validate_player_limit_trigger ON _flms.player_team;

CREATE OR REPLACE TRIGGER validate_player_limit_trigger
    BEFORE INSERT
    ON _flms.player_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_player_limit();