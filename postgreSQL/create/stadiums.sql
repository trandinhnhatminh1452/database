-- Table: _flms.stadiums

-- DROP TABLE IF EXISTS _flms.stadiums;

CREATE TABLE IF NOT EXISTS _flms.stadiums
(
    stadium_name character varying COLLATE pg_catalog."default" NOT NULL,
    location character varying COLLATE pg_catalog."default",
    capacity integer,
    CONSTRAINT stadiums_pkey PRIMARY KEY (stadium_name)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.stadiums
    OWNER to postgres;