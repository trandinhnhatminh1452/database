-- FUNCTION: extensions.player_match_delete_event_trigger()

-- DROP FUNCTION IF EXISTS extensions.player_match_delete_event_trigger();

CREATE OR REPLACE FUNCTION extensions.player_match_delete_event_trigger()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    _is_home VARCHAR;
    _goal_home BIGINT;
    _goal_away BIGINT;
BEGIN
    --  Check if deleted event was a goal
    IF OLD.event = 'goal' THEN 
        select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = _match_id and club_name = _in_club;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = _match_id and club_name != _in_club;
		
		_goal_home := _goal_home - 1;
		if _is_home = 'home' then
			call _flms.update_match_results(_match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(_match_id, _goal_away, _goal_home);
		end if;
    END IF;

    RETURN OLD; 
END;
$BODY$;

ALTER FUNCTION extensions.player_match_delete_event_trigger()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.player_match_delete_event_trigger() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.player_match_delete_event_trigger() TO postgres WITH GRANT OPTION;

