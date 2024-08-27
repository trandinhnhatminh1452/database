-- Table: _flms.coach_match

-- DROP TABLE IF EXISTS _flms.coach_match;

CREATE TABLE IF NOT EXISTS _flms.coach_match
(
    coach_id bigint,
    club_name character varying COLLATE pg_catalog."default",
    event character varying COLLATE pg_catalog."default",
    match_id character varying COLLATE pg_catalog."default",
    event_time numeric,
    event_half smallint,
    CONSTRAINT coach_match_club_name_fkey FOREIGN KEY (club_name)
        REFERENCES _flms.teams (club_name) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT coach_match_coach_id_fkey FOREIGN KEY (coach_id)
        REFERENCES _flms.coaches (coach_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT coach_match_match_id_fkey FOREIGN KEY (match_id)
        REFERENCES _flms.matches (match_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.coach_match
    OWNER to postgres;
-- Index: idx_club_name

-- DROP INDEX IF EXISTS _flms.idx_club_name;

CREATE INDEX IF NOT EXISTS idx_club_name
    ON _flms.coach_match USING btree
    (club_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: idx_event

-- DROP INDEX IF EXISTS _flms.idx_event;

CREATE INDEX IF NOT EXISTS idx_event
    ON _flms.coach_match USING btree
    (event COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: idx_match_id

-- DROP INDEX IF EXISTS _flms.idx_match_id;

CREATE INDEX IF NOT EXISTS idx_match_id
    ON _flms.coach_match USING btree
    (match_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

-- Trigger: coach_match_event_trigger

-- DROP TRIGGER IF EXISTS coach_match_event_trigger ON _flms.coach_match;

CREATE OR REPLACE TRIGGER coach_match_event_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.coach_match
    FOR EACH ROW
    EXECUTE FUNCTION extensions.coach_match_event_trigger_function();