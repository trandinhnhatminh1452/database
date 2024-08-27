-- PROCEDURE: _flms.submit_event(character varying, integer, character varying, integer, integer)

-- DROP PROCEDURE IF EXISTS _flms.submit_event(character varying, integer, character varying, integer, integer);

CREATE OR REPLACE PROCEDURE _flms.submit_event(
	IN _match_id character varying,
	IN _player_id integer,
	IN _event character varying,
	IN _event_half integer,
	IN _event_time integer)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
  _in_club varchar;
  _in_match_event varchar;
  _in_match_time integer;
  _in_match_half integer;
  current_matchweek integer;
  _is_home varchar;
  _goal_home bigint;
  _goal_away bigint;
  _temp integer;
BEGIN
	
  	SELECT t.club_name INTO _in_club
    FROM _flms.player_team t
    WHERE t.player_id = _player_id;
	
	IF _event in ('start','sub') then
		raise exception 'Event not able to add';
	end if;
	
	IF _event = 'in' then
		select player_id into _temp
		from _flms.player_match m
		where m.player_id = _player_id and m.match_id = _match_id and m.event = 'sub';
		
		if _temp is null then
			raise exception 'Player is not in the sub lineup';
		end if;
		
		raise notice 'Remember to submit the OUT player';
	end if;
	
	IF _event = 'out' then
		raise notice 'Remember to submit the IN player';
	end if;
	
	--Check if the player is on the field or not
	If _event != 'in' then
		Select "event" into _in_match_event
		from _flms.player_match
		where player_id = _player_id and match_id = _match_id and event in ('start','in');
		
		if _in_match_event is null then
			raise exception 'Player % not on the field yet', _player_id;
		end if;
		
		IF _in_match_event != 'start' then
			IF _in_match_event = 'in' then
				select event_time,event_half into _in_match_time,_in_match_half
				from _flms.player_match
				where player_id = _player_id and match_id = _match_id and "event" = 'in';

				IF _in_match_half > _event_half then
				ELSIF _in_match_half = _event_half then
					IF _in_match_time > _event_time then
						raise exception 'Player % not on the field yet', _player_id;
					END IF;
				End if;
			ELSE
				raise exception 'Player % not on the field yet', _player_id;
			End if;
		End if;
	End if;
	
	if _event = 'red_card' then
		select matchweek into current_matchweek
		from _flms.matches where match_id = _match_id;
		
		update _flms.player_match p
		set player_id = null
		from _flms.matches m
		where m.match_id = p.match_id and m.matchweek < current_matchweek + 4 and p.player_id = _player_id and "event" in ('start','sub');
		raise notice 'Player % will be banned from GW % to GW %', _player_id,current_matchweek+1,current_matchweek+3;
	end if;
	
	if _event in ('goal') then
		
		select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = _match_id and club_name = _in_club;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = _match_id and club_name != _in_club;
		
		_goal_home:= _goal_home + 1;
		if _is_home = 'home' then
			call _flms.update_match_results(_match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(_match_id, _goal_away, _goal_home);
		end if;
	end if;
	

	INSERT INTO _flms.player_match(match_id,player_id,club_name,"event",event_half,event_time)
	Values (_match_id,_player_id,_in_club,"_event",_event_half,_event_time);

END;
$BODY$;
ALTER PROCEDURE _flms.submit_event(character varying, integer, character varying, integer, integer)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.submit_event(character varying, integer, character varying, integer, integer)
    IS 'check for player_id is on the field yet or not
if event = redcard
check for 3 nearest match that the player already have been submited to squad select
and delete';
