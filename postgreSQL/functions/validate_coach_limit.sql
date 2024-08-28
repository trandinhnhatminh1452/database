-- FUNCTION: extensions.validate_coach_limit()

-- DROP FUNCTION IF EXISTS extensions.validate_coach_limit();

CREATE OR REPLACE FUNCTION extensions.validate_coach_limit()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  coach_count INT;
BEGIN
  SELECT COUNT(*) INTO coach_count 
  FROM _flms.coach_team
  WHERE club_name = NEW.club_name;  

  IF coach_count >= 15 THEN
    RAISE EXCEPTION 'Club coach limit reached (15 coaches). Cannot insert more coaches for %.', NEW.club_name; 
  END IF;

  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.validate_coach_limit()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_coach_limit() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_coach_limit() TO postgres WITH GRANT OPTION;

