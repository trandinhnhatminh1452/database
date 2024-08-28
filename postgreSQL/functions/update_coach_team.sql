-- FUNCTION: extensions.update_coach_team()

-- DROP FUNCTION IF EXISTS extensions.update_coach_team();

CREATE OR REPLACE FUNCTION extensions.update_coach_team()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    UPDATE _flms.coach_team
    SET club_name = 'Wolverhampton Wanderers'
    WHERE coach_id = NEW.coach_id;
    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.update_coach_team()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.update_coach_team() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.update_coach_team() TO postgres WITH GRANT OPTION;

