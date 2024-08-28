-- FUNCTION: extensions.validate_contract_overlap()

-- DROP FUNCTION IF EXISTS extensions.validate_contract_overlap();

CREATE OR REPLACE FUNCTION extensions.validate_contract_overlap()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  overlap_count INT;
BEGIN
  -- Check for contract overlap
  SELECT COUNT(*) INTO overlap_count
  FROM _flms.coach_team
  WHERE coach_id = NEW.coach_id 
    AND ("begin", "end") OVERLAPS (NEW."begin", NEW."end");

  IF overlap_count > 0 THEN
    RAISE EXCEPTION 'Contract already exists for player % on this period.', NEW.coach_id;
  END IF;

  RETURN NEW;  -- Allow the insert if there's no overlap
END;
$BODY$;

ALTER FUNCTION extensions.validate_contract_overlap()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_contract_overlap() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_contract_overlap() TO postgres WITH GRANT OPTION;

