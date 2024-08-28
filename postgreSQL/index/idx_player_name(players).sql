-- Index: idx_player_name

-- DROP INDEX IF EXISTS _flms.idx_player_name;

CREATE INDEX IF NOT EXISTS idx_player_name
    ON _flms.players USING btree
    (player_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
