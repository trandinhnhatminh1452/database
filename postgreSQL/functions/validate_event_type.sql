-- FUNCTION: extensions.validate_event_type()

-- DROP FUNCTION IF EXISTS extensions.validate_event_type();

CREATE OR REPLACE FUNCTION extensions.validate_event_type()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
  IF NEW.event NOT IN ('start', 'sub', 'in', 'out', 'red_card', 'yellow_card', 'goal') THEN
    RAISE EXCEPTION 'Invalid event type: %. Allowed values are start, sub, in, out, red_card, yellow_card, goal.', NEW.event;
  END IF;

  RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.validate_event_type()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_event_type() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_event_type() TO postgres WITH GRANT OPTION;

