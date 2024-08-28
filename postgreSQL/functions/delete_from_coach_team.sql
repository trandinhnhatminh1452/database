-- FUNCTION: extensions.delete_from_coach_team()

-- DROP FUNCTION IF EXISTS extensions.delete_from_coach_team();

CREATE OR REPLACE FUNCTION extensions.delete_from_coach_team()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    DELETE FROM _flms.coach_team 
    WHERE coach_id = OLD.coach_id;
    RETURN OLD;
END;
$BODY$;

ALTER FUNCTION extensions.delete_from_coach_team()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.delete_from_coach_team() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.delete_from_coach_team() TO postgres WITH GRANT OPTION;

