-- PROCEDURE: _flms.ticket_distribute()

-- DROP PROCEDURE IF EXISTS _flms.ticket_distribute();

CREATE OR REPLACE PROCEDURE _flms.ticket_distribute(
	)
LANGUAGE 'plpgsql'
AS $BODY$

declare
  match_rec record;
  _capacity integer;
  _away_ticket integer;
begin
  for match_rec in (select match_id from _flms.matches) loop
    SELECT s.capacity 
    INTO _capacity 
    FROM _flms.team_match tm
    Inner JOIN _flms.teams t  on t.club_name = tm.club_name
    Inner JOIN _flms.stadiums s on t.stadium_name = s.stadium_name
    WHERE tm.match_id = match_rec.match_id and tm.home_away = 'home';

    IF _capacity > 30000 THEN _away_ticket := _capacity * 10 / 100;
    else  _away_ticket := 3000; end if;

    update _flms.matches m
    set away_ticket = _away_ticket, home_ticket = _capacity - _away_ticket
    where m.match_id = match_rec.match_id;

  end loop;
end;
$BODY$;
ALTER PROCEDURE _flms.ticket_distribute()
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.ticket_distribute()
    IS 'distribute ticket. 10%, min 3000 for away';
