-- PROCEDURE: _flms.update_coach_info(integer, character varying, character varying, character varying, date, date, date)

-- DROP PROCEDURE IF EXISTS _flms.update_coach_info(integer, character varying, character varying, character varying, date, date, date);

CREATE OR REPLACE PROCEDURE _flms.update_coach_info(
	IN _coach_id integer,
	IN _club_name character varying,
	IN _coach_name character varying,
	IN new_nation character varying DEFAULT NULL::character varying,
	IN new_date_of_birth date DEFAULT NULL::date,
	IN begin_date date DEFAULT NULL::date,
	IN end_date date DEFAULT NULL::date)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    overlap_count INTEGER;
BEGIN
    -- Update coach information (only if a new value is provided)
    UPDATE _flms.coaches
    SET 
		coach_name = COALESCE(_coach_name,coach_name),
        nationality = COALESCE(new_nation, nationality),
        date_of_birth = COALESCE(new_date_of_birth, date_of_birth)
	WHERE coach_id = _coach_id;	

END;
$BODY$;
ALTER PROCEDURE _flms.update_coach_info(integer, character varying, character varying, character varying, date, date, date)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.update_coach_info(integer, character varying, character varying, character varying, date, date, date)
    IS 'update provided info only
';
