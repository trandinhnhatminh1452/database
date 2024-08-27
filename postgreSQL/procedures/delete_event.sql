-- PROCEDURE: _flms.delete_event(character varying, integer, character varying, integer, integer)

-- DROP PROCEDURE IF EXISTS _flms.delete_event(character varying, integer, character varying, integer, integer);

CREATE OR REPLACE PROCEDURE _flms.delete_event(
	IN _match_id character varying,
	IN _player_id integer,
	IN _event character varying,
	IN _event_half integer,
	IN _event_time integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
  _in_club varchar; -- Declare and initialize the variable
  _is_home varchar;
  _goal_home bigint;
  _goal_away bigint;
BEGIN
	
  	SELECT t.club_name INTO _in_club
    FROM _flms.player_team t
    WHERE t.player_id = _player_id;
	
	if _event in ('goal') then
		
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
	end if;

    delete from _flms.player_match
	where match_id = _match_id and
		player_id = _player_id and
		club_name = _in_club and
		"event" = "_event" and
		event_half = _event_half and
		event_time = _event_time;
		
	
END;
$BODY$;
ALTER PROCEDURE _flms.delete_event(character varying, integer, character varying, integer, integer)
    OWNER TO postgres;
