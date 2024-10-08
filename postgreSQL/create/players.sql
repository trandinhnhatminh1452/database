-- Table: _flms.players

-- DROP TABLE IF EXISTS _flms.players;

CREATE TABLE IF NOT EXISTS _flms.players
(
    player_name character varying COLLATE pg_catalog."default",
    player_id bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    "position" character varying COLLATE pg_catalog."default",
    date_of_birth date,
    CONSTRAINT players_pkey PRIMARY KEY (player_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS _flms.players
    OWNER to postgres;
-- Index: idx_player_name

-- DROP INDEX IF EXISTS _flms.idx_player_name;

CREATE INDEX IF NOT EXISTS idx_player_name
    ON _flms.players USING btree
    (player_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;