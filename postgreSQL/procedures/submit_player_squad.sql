-- PROCEDURE: _flms.submit_player_squad(integer, character varying, character varying, character varying)

-- DROP PROCEDURE IF EXISTS _flms.submit_player_squad(integer, character varying, character varying, character varying);

CREATE OR REPLACE PROCEDURE _flms.submit_player_squad(
	IN _player_id integer,
	IN _club_name character varying,
	IN _match_id character varying,
	IN _event character varying)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
 	_in_club integer; -- Declare and initialize the variable
	_ban_check integer;
	current_matchweek integer;
	_event_check_matchweek integer;
	_player_count integer;
BEGIN
	
  	SELECT t.player_id INTO _in_club
    FROM _flms.player_team t
    WHERE t.club_name = _club_name AND t.player_id = _player_id 
		and (select match_time from _flms.matches where match_id = _match_id) between t.begin and t.end;

 	IF _in_club is null THEN
		RAISE exception 'Player % is not a member of club %', _player_id, _club_name;
 	END IF;
	
	IF _event not in ('start','sub') then
		RAISE exception 'This procedure use for submit squad purpose only';
 	END IF;

	--check if there's matchweek that have card
	select m.matchweek into _event_check_matchweek
	from _flms.player_match p
	join _flms.matches m on p.match_id = m.match_id
	where p.player_id = _player_id and p.event in ('red_card')
	order by m.matchweek desc
	limit 1;

	select matchweek into current_matchweek
	from _flms.matches m
	where m.match_id = _match_id;

	if _event_check_matchweek is not null then
		if current_matchweek - _event_check_matchweek < 4 and current_matchweek - _event_check_matchweek > 0 then
			RAISE exception 'Player % is on punishing', _player_id;
			COMMIT;
		end if;
	end if;

	
	INSERT INTO _flms.player_match(
	player_id, club_name, "event", match_id)
	VALUES (_player_id, _club_name,_event, _match_id);

END;
$BODY$;
ALTER PROCEDURE _flms.submit_player_squad(integer, character varying, character varying, character varying)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.submit_player_squad(integer, character varying, character varying, character varying)
    IS '1. check if player is in club
2. check if there is red card for 3 gw ago';
