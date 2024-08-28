-- FUNCTION: extensions.validate_player_limit()

-- DROP FUNCTION IF EXISTS extensions.validate_player_limit();

CREATE OR REPLACE FUNCTION extensions.validate_player_limit()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  player_count INT;
BEGIN
  SELECT COUNT(*) INTO player_count 
  FROM _flms.player_team
  WHERE club_name = NEW.club_name;

  IF player_count >= 50 THEN
    RAISE EXCEPTION 'Club player limit reached (50 players). Cannot insert more players for %.', NEW.club_name;
  END IF;

  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.validate_player_limit()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_player_limit() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_player_limit() TO postgres WITH GRANT OPTION;

