-- Table: _flms.matches

-- DROP TABLE IF EXISTS _flms.matches;

CREATE TABLE IF NOT EXISTS _flms.matches
(
    matchweek smallint,
    home_ticket numeric,
    away_ticket numeric,
    match_time timestamp without time zone,
    match_id character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT matches_pkey PRIMARY KEY (match_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.matches
    OWNER to postgres;
-- Index: idx_matches

-- DROP INDEX IF EXISTS _flms.idx_matches;

CREATE INDEX IF NOT EXISTS idx_matches
    ON _flms.matches USING btree
    (match_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;