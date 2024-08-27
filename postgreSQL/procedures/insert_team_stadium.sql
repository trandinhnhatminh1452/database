-- PROCEDURE: _flms.insert_team_stadium(character varying, character varying, character varying, character varying, integer)

-- DROP PROCEDURE IF EXISTS _flms.insert_team_stadium(character varying, character varying, character varying, character varying, integer);

CREATE OR REPLACE PROCEDURE _flms.insert_team_stadium(
	IN _club_name character varying,
	IN _club_code character varying,
	IN _stadium_name character varying,
	IN _location character varying,
	IN _capacity integer)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
BEGIN
    -- Insert stadium into stadiums table
    INSERT INTO _flms.stadiums (stadium_name,"location",capacity) 
    VALUES (_stadium_name,_location,_capacity);

    -- Insert team into teams table
    INSERT INTO _flms.teams (club_name, stadium_name, club_code) 
    VALUES (_club_name, _stadium_name, _club_code);
END;
$BODY$;
ALTER PROCEDURE _flms.insert_team_stadium(character varying, character varying, character varying, character varying, integer)
    OWNER TO postgres;
