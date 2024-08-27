-- PROCEDURE: _flms.delete_coach(integer)

-- DROP PROCEDURE IF EXISTS _flms.delete_coach(integer);

CREATE OR REPLACE PROCEDURE _flms.delete_coach(
	IN _coach_id integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
BEGIN
    -- Delete coach from coach_team
    DELETE FROM _flms.coach_team WHERE coach_id = _coach_id;

    -- Delete coach from coaches
    DELETE FROM _flms.coaches WHERE coach_id = _coach_id;
	
	

END;
$BODY$;
ALTER PROCEDURE _flms.delete_coach(integer)
    OWNER TO postgres;
