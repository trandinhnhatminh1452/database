-- PROCEDURE: _flms.delete_coach_squad(integer, character varying)

-- DROP PROCEDURE IF EXISTS _flms.delete_coach_squad(integer, character varying);

CREATE OR REPLACE PROCEDURE _flms.delete_coach_squad(
	IN _coach_id integer,
	IN _match_id character varying)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
BEGIN
	
	delete from _flms.coach_match 
	WHERE coach_id = _coach_id and match_id = _match_id and "event" in ('participate');

END;
$BODY$;
ALTER PROCEDURE _flms.delete_coach_squad(integer, character varying)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.delete_coach_squad(integer, character varying)
    IS 'unsubmit coach for match';
