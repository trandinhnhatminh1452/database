-- PROCEDURE: _flms.insert_player(character varying, character varying, character varying, date, integer, date, date)

-- DROP PROCEDURE IF EXISTS _flms.insert_player(character varying, character varying, character varying, date, integer, date, date);

CREATE OR REPLACE PROCEDURE _flms.insert_player(
	IN _player_name character varying,
	IN _club_name character varying,
	IN pos character varying DEFAULT NULL::character varying,
	IN _date_of_birth date DEFAULT NULL::date,
	IN shirt_number integer DEFAULT NULL::integer,
	IN begin_date date DEFAULT '2023-01-01'::date,
	IN end_date date DEFAULT '2023-12-31'::date)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
    _player_id INTEGER;
    player_count INTEGER;
	overlap_count INTEGER;
BEGIN
	--check if player already exist in players table
	Select player_id into _player_id
	from _flms.players
	where player_name = _player_name and position = pos and date_of_birth = _date_of_birth;
	
	if _player_id is null then
		-- Insert player into players table
		INSERT INTO _flms.players (player_name, position, date_of_birth) 
		VALUES (player_name, pos, date_of_birth)
		RETURNING player_id INTO _player_id;

		-- Insert player into player_team table
		INSERT INTO _flms.player_team (club_name, player_id, shirt_number, "begin" ,"end") 
		VALUES (_club_name, _player_id, shirt_number, begin_date, end_date);
	else
		-- Insert player into player_team table
		INSERT INTO _flms.player_team (club_name, player_id, shirt_number, "begin" ,"end") 
		VALUES (_club_name, _player_id, shirt_number, begin_date, end_date);
	End if;

    EXCEPTION 
    WHEN unique_violation THEN 
        RAISE NOTICE 'A player with this shirt number already exists for this club.';
        ROLLBACK;  
	COMMIT; 

END;
$BODY$;
ALTER PROCEDURE _flms.insert_player(character varying, character varying, character varying, date, integer, date, date)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.insert_player(character varying, character varying, character varying, date, integer, date, date)
    IS 'player limit for each club is 50
check for duplicate shirt number';
