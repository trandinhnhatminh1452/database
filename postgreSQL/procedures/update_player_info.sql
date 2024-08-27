-- PROCEDURE: _flms.update_player_info(integer, character varying, character varying, character varying, date, integer, date, date)

-- DROP PROCEDURE IF EXISTS _flms.update_player_info(integer, character varying, character varying, character varying, date, integer, date, date);

CREATE OR REPLACE PROCEDURE _flms.update_player_info(
	IN _player_id integer,
	IN _club_name character varying,
	IN _player_name character varying,
	IN _position character varying DEFAULT NULL::character varying,
	IN new_date_of_birth date DEFAULT NULL::date,
	IN _shirt_number integer DEFAULT NULL::integer,
	IN begin_date date DEFAULT '2023-01-01'::date,
	IN end_date date DEFAULT '2023-12-31'::date)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
	overlap_count INTEGER;
BEGIN
    -- Update player information (only if a new value is provided)
    UPDATE _flms.players
    SET 
		player_name = COALESCE(_player_name,player_name),
        position = COALESCE(_position, position),
        date_of_birth = COALESCE(new_date_of_birth, date_of_birth)
	WHERE player_id = _player_id;

	
	EXCEPTION
    WHEN unique_violation THEN --  duplicate shirt number error
        ROLLBACK;
    COMMIT;
	

END;
$BODY$;
ALTER PROCEDURE _flms.update_player_info(integer, character varying, character varying, character varying, date, integer, date, date)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.update_player_info(integer, character varying, character varying, character varying, date, integer, date, date)
    IS 'update provided info only
check for duplicate shirt number';
