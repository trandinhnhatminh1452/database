-- PROCEDURE: _flms.caculate_table_to_week(integer)

-- DROP PROCEDURE IF EXISTS _flms.caculate_table_to_week(integer);

CREATE OR REPLACE PROCEDURE _flms.caculate_table_to_week(
	IN _matchweek integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
  current_team RECORD;
  match_data RECORD;
  _position integer;
  _won integer;
  _drawn integer;
  _lost integer;
BEGIN
  FOR current_team IN (SELECT * FROM _flms.teams) LOOP -- Iterate through teams
    current_team.point := 0;         
    current_team.goal_difference := 0;
    _won := 0;
    _drawn := 0;
    _lost := 0;

    FOR match_data IN (
      SELECT m1.goal_scored AS current_goals, m2.goal_scored AS opp_goals
      FROM _flms.team_match m1
      JOIN _flms.team_match m2 ON m1.match_id = m2.match_id
	    JOIN _flms.matches m3 ON m3.match_id = m2.match_id
      WHERE (m1.club_name = current_team.club_name AND m2.club_name <> current_team.club_name 
			 and m1.goal_scored is not null and m2.goal_scored is not null and m3.matchweek <= _matchweek
			) 
    ) LOOP -- Calculate for each team's matches
     
      IF match_data.current_goals > match_data.opp_goals THEN
        current_team.point := current_team.point + 3;
        _won := _won + 1;
      END IF;
      IF match_data.current_goals = match_data.opp_goals THEN
        current_team.point := current_team.point + 1;
        _drawn := _drawn + 1;
      END IF;
      IF match_data.current_goals < match_data.opp_goals THEN
        _lost := _lost + 1;
      END IF;

      current_team.goal_difference := current_team.goal_difference + match_data.current_goals - match_data.opp_goals;
    END LOOP; -- End of match calculation loop

    UPDATE _flms.teams
    SET point = current_team.point,
        goal_difference = current_team.goal_difference,
        won = _won,
        drawn = _drawn,
        lost = _lost,
        played = won+drawn+lost
    WHERE club_name = current_team.club_name; -- Update the team's record
  END LOOP; -- End of team iteration loop

  _position := 1;
  FOR current_team IN (SELECT * FROM _flms.teams order by point desc, goal_difference desc) LOOP -- Iterate through teams
    update _flms.teams
    set position = _position
    where club_name = current_team.club_name;
    _position := _position + 1;
  end loop;
END;
$BODY$;
ALTER PROCEDURE _flms.caculate_table_to_week(integer)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.caculate_table_to_week(integer)
    IS 'caculate the table to the choosing GW
';
