-- Table: _flms.referees

-- DROP TABLE IF EXISTS _flms.referees;

CREATE TABLE IF NOT EXISTS _flms.referees
(
    ref_id character varying COLLATE pg_catalog."default" NOT NULL,
    ref_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT referee_pkey PRIMARY KEY (ref_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.referees
    OWNER to postgres;