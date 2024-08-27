-- PROCEDURE: _flms.delete_match_results(character varying)

-- DROP PROCEDURE IF EXISTS _flms.delete_match_results(character varying);

CREATE OR REPLACE PROCEDURE _flms.delete_match_results(
	IN _match_id character varying)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
  _home_team varchar;
  _away_team varchar;
  _home_scored integer;
  _away_scored integer;
BEGIN
  -- Fetch team names and goal scores; check if goal scores are NULL
  SELECT club_name, goal_scored INTO _home_team, _home_scored
  FROM _flms.team_match
  WHERE match_id = _match_id AND home_away = 'home' AND goal_scored IS NOT NULL;

  SELECT club_name, goal_scored INTO _away_team, _away_scored
  FROM _flms.team_match
  WHERE match_id = _match_id AND home_away = 'away' AND goal_scored IS NOT NULL;

  -- Proceed only if goal scores were found for both teams
  IF _home_scored IS NOT NULL AND _away_scored IS NOT NULL THEN

    -- Update points based on the match outcome
    IF _home_scored > _away_scored THEN
        UPDATE _flms.teams SET point = point - 3, goal_difference = goal_difference - _home_scored + _away_scored,
	  							won = won - 1, played = played - 1 WHERE club_name = _home_team;
        UPDATE _flms.teams SET point = point, goal_difference = goal_difference + _home_scored - _away_scored,
								lost = lost - 1, played = played - 1 WHERE club_name = _away_team;
    ELSIF _home_scored < _away_scored THEN
        UPDATE _flms.teams SET point = point - 3, goal_difference = goal_difference + _home_scored - _away_scored,
								won = won - 1, played = played - 1 WHERE club_name = _away_team;
        UPDATE _flms.teams SET point = point, goal_difference = goal_difference - _home_scored + _away_scored,
								lost = lost - 1, played = played - 1 WHERE club_name = _home_team;
    ELSE
        UPDATE _flms.teams SET point = point - 1, drawn = drawn - 1, played = played - 1 WHERE club_name IN (_home_team, _away_team);
    END IF;

    -- Reset the goal_scored for both teams
    UPDATE _flms.team_match
    SET goal_scored = NULL
    WHERE match_id = _match_id;

    -- Recalculate positions
    call _flms.caculate_position();
  
  END IF; -- End of conditional block 

END;
$BODY$;
ALTER PROCEDURE _flms.delete_match_results(character varying)
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.delete_match_results(character varying)
    IS 'this procedure is subprocedure of update_match_results
handle the case that goal_score was existed before';
