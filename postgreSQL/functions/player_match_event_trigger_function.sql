-- FUNCTION: extensions.player_match_event_trigger_function()

-- DROP FUNCTION IF EXISTS extensions.player_match_event_trigger_function();

CREATE OR REPLACE FUNCTION extensions.player_match_event_trigger_function()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    player_count INT;
    in_match_event TEXT;
    in_match_time INT;
    in_match_half INT;
    current_matchweek INT;
    _goal_home BIGINT;
    _goal_away BIGINT;
	_is_home varchar;
	_in_club varchar;
BEGIN
	
	Select club_name into _in_club
	from _flms.player_team
	where club_name = new.club_name and player_id = new.player_id;
	
	if _in_club is null then
		raise exception 'Player is not in the club';
	end if;
	
    -- 1. Validate event type
    IF NEW.event NOT IN ('start', 'sub', 'in', 'out', 'red_card', 'yellow_card', 'goal') THEN
        RAISE EXCEPTION 'Invalid event type: %. Allowed values are start, sub, in, out, red_card, yellow_card, goal.', NEW.event;
    END IF;

    -- 2. Validate player limit for 'start' and 'sub' events
    IF NEW.event IN ('start', 'sub') THEN
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

    -- 3. 'in' Event: Ensure player was previously 'sub'bed
    IF NEW.event = 'in' THEN
        IF NOT EXISTS (
            SELECT 1 FROM _flms.player_match 
            WHERE player_id = NEW.player_id 
            AND match_id = NEW.match_id 
            AND event = 'sub'
        ) THEN
            RAISE EXCEPTION 'Player % is not in the sub lineup', NEW.player_id;
        END IF;
        RAISE NOTICE 'Remember to submit the OUT player';
    END IF;

    -- 4. 'out' Event: Remind to submit 'in' player
    IF NEW.event = 'out' THEN
        RAISE NOTICE 'Remember to submit the IN player';
    END IF;

    -- 5. Check if player is on the field (for non-'in' events)
    IF NEW.event != 'in' THEN
        SELECT event, event_time, event_half
        INTO in_match_event, in_match_time, in_match_half
        FROM _flms.player_match
        WHERE player_id = NEW.player_id 
        AND match_id = NEW.match_id 
        AND event IN ('start', 'in');

        IF in_match_event IS NULL OR 
           (in_match_event = 'in' AND 
            (in_match_half > NEW.event_half OR 
             (in_match_half = NEW.event_half AND in_match_time > NEW.event_time))
           ) THEN
            RAISE EXCEPTION 'Player % not on the field yet', NEW.player_id;
        END IF;
    END IF;

    -- 6. Red Card Handling
    IF NEW.event = 'red_card' THEN
        SELECT matchweek INTO current_matchweek
        FROM _flms.matches 
        WHERE match_id = NEW.match_id;

        DELETE FROM _flms.player_match p
    	USING _flms.matches m
   		WHERE m.match_id = p.match_id 
      	AND m.matchweek > current_matchweek  -- Future matchweeks
      	AND m.matchweek <= current_matchweek + 3 -- 3 weeks ahead
      	AND p.player_id = NEW.player_id 
      	AND p.event IN ('start', 'sub'); -- Only delete start/sub events

        RAISE NOTICE 'Player % will be banned from GW % to GW %', NEW.player_id, current_matchweek + 1, current_matchweek + 3;
    END IF;

    -- 7. Goal Handling 
    IF NEW.event = 'goal' THEN
       -- Determine if the club scoring the goal is the home or away team
		select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = NEW.match_id and club_name = NEW.club_name;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = NEW.match_id and club_name != NEW.club_name;
		
		_goal_home:= _goal_home + 1;
		if _is_home = 'home' then
			call _flms.update_match_results(new.match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(new.match_id, _goal_away, _goal_home);
		end if; 
    END IF;

    RETURN NEW; 
END;
$BODY$;

ALTER FUNCTION extensions.player_match_event_trigger_function()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.player_match_event_trigger_function() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.player_match_event_trigger_function() TO postgres WITH GRANT OPTION;

