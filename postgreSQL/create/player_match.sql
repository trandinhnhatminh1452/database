-- Table: _flms.player_match

-- DROP TABLE IF EXISTS _flms.player_match;

CREATE TABLE IF NOT EXISTS _flms.player_match
(
    player_id bigint,
    match_id character varying COLLATE pg_catalog."default",
    club_name character varying COLLATE pg_catalog."default",
    event character varying COLLATE pg_catalog."default",
    event_time integer,
    event_half integer,
    CONSTRAINT player_match_club_name_fkey FOREIGN KEY (club_name)
        REFERENCES _flms.teams (club_name) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT player_match_match_id_fkey FOREIGN KEY (match_id)
        REFERENCES _flms.matches (match_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT player_match_player_id_fkey FOREIGN KEY (player_id)
        REFERENCES _flms.players (player_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.player_match
    OWNER to postgres;

-- Trigger: player_match_delete_event

-- DROP TRIGGER IF EXISTS player_match_delete_event ON _flms.player_match;

CREATE OR REPLACE TRIGGER player_match_delete_event
    AFTER DELETE
    ON _flms.player_match
    FOR EACH ROW
    EXECUTE FUNCTION extensions.player_match_delete_event_trigger();

-- Trigger: player_match_event_trigger

-- DROP TRIGGER IF EXISTS player_match_event_trigger ON _flms.player_match;

CREATE OR REPLACE TRIGGER player_match_event_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.player_match
    FOR EACH ROW
    EXECUTE FUNCTION extensions.player_match_event_trigger_function();