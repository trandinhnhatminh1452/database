-- PROCEDURE: _flms.submit_coach_squad(character varying, character varying, integer)

-- DROP PROCEDURE IF EXISTS _flms.submit_coach_squad(character varying, character varying, integer);

CREATE OR REPLACE PROCEDURE _flms.submit_coach_squad(
	IN _match_id character varying,
	IN _club_name character varying,
	IN _coach_id integer)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
  	_in_club integer; -- Declare and initialize the variable
	_ban_check integer;
	current_matchweek integer;
	_event_check_matchweek integer;
  	_coach_count integer;
BEGIN
	
  	SELECT t.coach_id INTO _in_club
    FROM _flms.coach_team t
    WHERE t.club_name = _club_name AND t.coach_id = _coach_id
		and (select match_time from _flms.matches where match_id = _match_id) between t.begin and t.end;

 	 IF _in_club is null THEN
		RAISE exception 'Coach % is not a member of club %', _coach_id, _club_name;
  	END IF;
  	
	--check if there's matchweek that have card
	select m.matchweek into _event_check_matchweek
	from _flms.coach_match p
	join _flms.matches m on p.match_id = m.match_id
	where p.coach_id = _coach_id and p.event in ('red_card')
	order by m.matchweek desc
	limit 1;

	select matchweek into current_matchweek
	from _flms.matches m
	where m.match_id = _match_id;

	if _event_check_matchweek is not null then
		if current_matchweek - _event_check_matchweek < 4 and current_matchweek - _event_check_matchweek > 0 then
			RAISE exception 'Coach % is on punishing', _coach_id;
			COMMIT;
		end if;
	end if;

    Select count(*) into _coach_count
	from _flms.coach_match
	where match_id = _match_id and club_name = _club_name and "event" = 'participate';

	
	INSERT INTO _flms.coach_match(
	coach_id, club_name, "event", match_id)
	VALUES (_coach_id, _club_name,'participate', _match_id);

END;
$BODY$;
ALTER PROCEDURE _flms.submit_coach_squad(character varying, character varying, integer)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.submit_coach_squad(character varying, character varying, integer)
    IS 'same as submit_player_squad';
