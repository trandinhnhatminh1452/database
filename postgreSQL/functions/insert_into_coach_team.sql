-- FUNCTION: extensions.insert_into_coach_team()

-- DROP FUNCTION IF EXISTS extensions.insert_into_coach_team();

CREATE OR REPLACE FUNCTION extensions.insert_into_coach_team()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    INSERT INTO _flms.coach_team (coach_id, club_name) 
    VALUES (NEW.coach_id, 'Default Team');
    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.insert_into_coach_team()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.insert_into_coach_team() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.insert_into_coach_team() TO postgres WITH GRANT OPTION;

