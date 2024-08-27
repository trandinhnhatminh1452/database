-- PROCEDURE: _flms.delete_player(integer)

-- DROP PROCEDURE IF EXISTS _flms.delete_player(integer);

CREATE OR REPLACE PROCEDURE _flms.delete_player(
	IN _player_id integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
BEGIN
    
    -- Delete player from player_team
    DELETE FROM _flms.player_team WHERE player_id = _player_id;

    -- Delete player from players
    DELETE FROM _flms.players WHERE player_id = _player_id;
	

END;
$BODY$;
ALTER PROCEDURE _flms.delete_player(integer)
    OWNER TO postgres;
