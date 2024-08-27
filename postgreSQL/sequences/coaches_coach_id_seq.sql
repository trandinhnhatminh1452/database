-- SEQUENCE: _flms.coaches_coach_id_seq

-- DROP SEQUENCE IF EXISTS _flms.coaches_coach_id_seq;

CREATE SEQUENCE IF NOT EXISTS _flms.coaches_coach_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE _flms.coaches_coach_id_seq
    OWNER TO postgres;