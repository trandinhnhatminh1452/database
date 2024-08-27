-- PROCEDURE: _flms.insert_coach(character varying, character varying, character varying, date, date, date)

-- DROP PROCEDURE IF EXISTS _flms.insert_coach(character varying, character varying, character varying, date, date, date);

CREATE OR REPLACE PROCEDURE _flms.insert_coach(
	IN _coach_name character varying,
	IN _club_name character varying,
	IN _nationality character varying DEFAULT NULL::character varying,
	IN _date_of_birth date DEFAULT NULL::date,
	IN begin_date date DEFAULT '2023-01-01'::date,
	IN end_date date DEFAULT '2023-12-31'::date)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
    _coach_id INTEGER;
    coach_count INTEGER;
	overlap_count INTEGER;
BEGIN
	--check if coach already exist in coaches table
	Select coach_id into _coach_id
	from _flms.coachs
	where coach_name = _coach_name and nationality = _nationality and date_of_birth = _date_of_birth;
	
	if _coach_id is null then
		-- Insert coach into coaches table
		INSERT INTO _flms.coaches (coach_name, nationality, date_of_birth) 
		VALUES (_coach_name, nationality, date_of_birth)
		RETURNING coach_id INTO _coach_id;

		-- Insert coach into coach_team table
		INSERT INTO _flms.coach_team (club_name, coach_id, "begin" ,"end") 
		VALUES (_club_name, _coach_id, begin_date, end_date);
	else
		-- Insert coach and club into coach_team table
		INSERT INTO _flms.coach_team (club_name, coach_id, "begin" ,"end") 
		VALUES (_club_name, _coach_id, begin_date, end_date);
	end if;

END;
$BODY$;
ALTER PROCEDURE _flms.insert_coach(character varying, character varying, character varying, date, date, date)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.insert_coach(character varying, character varying, character varying, date, date, date)
    IS 'coach limit for each club is 15';
