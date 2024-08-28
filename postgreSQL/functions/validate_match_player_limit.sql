-- FUNCTION: extensions.validate_match_player_limit()

-- DROP FUNCTION IF EXISTS extensions.validate_match_player_limit();

CREATE OR REPLACE FUNCTION extensions.validate_match_player_limit()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  player_count INT;
BEGIN
  IF NEW.event IN ('start', 'sub') THEN  -- Check if event is 'start' or 'sub'
    SELECT COUNT(*) INTO player_count
    FROM _flms.player_match
    WHERE match_id = NEW.match_id
      AND club_name = NEW.club_name
      AND event = NEW.event;

    IF NEW.event = 'start' AND player_count >= 11 THEN
      RAISE EXCEPTION 'Start player limit for match reached';
    ELSIF NEW.event = 'sub' AND player_count >= 9 THEN
      RAISE EXCEPTION 'Sub player limit for match reached';
    END IF;
  END IF; 

  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.validate_match_player_limit()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_match_player_limit() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_match_player_limit() TO postgres WITH GRANT OPTION;

