-- Table: _flms.ref_match

-- DROP TABLE IF EXISTS _flms.ref_match;

CREATE TABLE IF NOT EXISTS _flms.ref_match
(
    match_id character varying COLLATE pg_catalog."default" NOT NULL,
    ref_id character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT ref_match_pkey PRIMARY KEY (match_id, ref_id),
    CONSTRAINT ref_match_match_id_fkey FOREIGN KEY (match_id)
        REFERENCES _flms.matches (match_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ref_match_ref_id_fkey FOREIGN KEY (ref_id)
        REFERENCES _flms.referees (ref_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.ref_match
    OWNER to postgres;
-- Index: idx_ref_id

-- DROP INDEX IF EXISTS _flms.idx_ref_id;

CREATE INDEX IF NOT EXISTS idx_ref_id
    ON _flms.ref_match USING btree
    (ref_id COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;