-- PROCEDURE: _flms.delete_player_squad(integer, character varying)

-- DROP PROCEDURE IF EXISTS _flms.delete_player_squad(integer, character varying);

CREATE OR REPLACE PROCEDURE _flms.delete_player_squad(
	IN _player_id integer,
	IN _match_id character varying)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
BEGIN
	
	delete from _flms.player_match
	WHERE player_id = _player_id and match_id = _match_id and "event" in ('start','sub');

END;
$BODY$;
ALTER PROCEDURE _flms.delete_player_squad(integer, character varying)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.delete_player_squad(integer, character varying)
    IS 'unsubmit player for match';
