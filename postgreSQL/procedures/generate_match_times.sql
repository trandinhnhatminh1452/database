-- PROCEDURE: _flms.generate_match_times(date, time without time zone)

-- DROP PROCEDURE IF EXISTS _flms.generate_match_times(date, time without time zone);

CREATE OR REPLACE PROCEDURE _flms.generate_match_times(
	IN start_date date,
	IN match_hour time without time zone)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
    current_week integer;
BEGIN
    FOR current_week IN (SELECT DISTINCT matchweek FROM _flms.matches ORDER BY matchweek asc)
    LOOP
        UPDATE _flms.matches
        SET match_time = (start_date + ((current_week - 1) * interval '7 days'))::DATE + match_hour::TIME
        WHERE matchweek = current_week;
    END LOOP;
END;
$BODY$;
ALTER PROCEDURE _flms.generate_match_times(date, time without time zone)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.generate_match_times(date, time without time zone)
    IS 'generate match time by following rules:
GW interval is 7 days, start date and time is selectable';
