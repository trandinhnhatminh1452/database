-- Table: _flms.coach_team

-- DROP TABLE IF EXISTS _flms.coach_team;

CREATE TABLE IF NOT EXISTS _flms.coach_team
(
    coach_id bigint NOT NULL,
    club_name character varying COLLATE pg_catalog."default" NOT NULL,
    begin date,
    "end" date,
    CONSTRAINT coach_team__club_name_fkey FOREIGN KEY (club_name)
        REFERENCES _flms.teams (club_name) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT coach_team__coach_id_fkey FOREIGN KEY (coach_id)
        REFERENCES _flms.coaches (coach_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT end_date_check CHECK (begin < "end")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.coach_team
    OWNER to postgres;

ALTER TABLE IF EXISTS _flms.coach_team
    ENABLE ROW LEVEL SECURITY;

-- Trigger: validate_coach_limit_trigger

-- DROP TRIGGER IF EXISTS validate_coach_limit_trigger ON _flms.coach_team;

CREATE OR REPLACE TRIGGER validate_coach_limit_trigger
    BEFORE INSERT
    ON _flms.coach_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_coach_limit();

-- Trigger: validate_contract_overlap_trigger

-- DROP TRIGGER IF EXISTS validate_contract_overlap_trigger ON _flms.coach_team;

CREATE OR REPLACE TRIGGER validate_contract_overlap_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.coach_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_contract_overlap();