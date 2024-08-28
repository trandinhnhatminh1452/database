-- FUNCTION: extensions.validate_team_limit()

-- DROP FUNCTION IF EXISTS extensions.validate_team_limit();

CREATE OR REPLACE FUNCTION extensions.validate_team_limit()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  team_count INT;
BEGIN
  SELECT COUNT(*) INTO team_count FROM _flms.teams;
  IF team_count >= 20 THEN
    RAISE EXCEPTION 'Club limit reached (20). Cannot insert more';
  END IF;
  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.validate_team_limit()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_team_limit() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_team_limit() TO postgres WITH GRANT OPTION;

