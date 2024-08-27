-- PROCEDURE: _flms.update_match_results(character varying, bigint, bigint)

-- DROP PROCEDURE IF EXISTS _flms.update_match_results(character varying, bigint, bigint);

CREATE OR REPLACE PROCEDURE _flms.update_match_results(
	IN _match_id character varying,
	IN _goal_scored_home bigint,
	IN _goal_scored_away bigint)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
    _home_team varchar;
    _away_team varchar;
	_prev_home_score bigint;
	_prev_away_score bigint;
BEGIN

    -- Determine home and away teams
    SELECT club_name INTO _home_team
    FROM _flms.team_match
    WHERE match_id = _match_id AND home_away = 'home';

    SELECT club_name INTO _away_team
    FROM _flms.team_match
    WHERE match_id = _match_id AND home_away = 'away';
	
	
	-- Check if goal_scored exists for the match
    call _flms.delete_match_results(_match_id);
		
	-- Update the goal_scored for both teams
	UPDATE _flms.team_match
	SET goal_scored = _goal_scored_home
	WHERE match_id = _match_id AND home_away = 'home';

	UPDATE _flms.team_match
	SET goal_scored = _goal_scored_away
	WHERE match_id = _match_id AND home_away = 'away';

	-- Update points based on the match outcome
	IF _goal_scored_home > _goal_scored_away THEN
		UPDATE _flms.teams SET point = point + 3, goal_difference = goal_difference + _goal_scored_home - _goal_scored_away,
								won = won + 1, played = played + 1 WHERE club_name = _home_team;
		UPDATE _flms.teams SET point = point, goal_difference = goal_difference - _goal_scored_home + _goal_scored_away,
								lost = lost + 1, played = played + 1 WHERE club_name = _away_team;
	ELSIF _goal_scored_home < _goal_scored_away THEN
		UPDATE _flms.teams SET point = point + 3, goal_difference = goal_difference - _goal_scored_home + _goal_scored_away,
								won = won + 1, played = played + 1 WHERE club_name = _away_team;
		UPDATE _flms.teams SET point = point, goal_difference = goal_difference + _goal_scored_home - _goal_scored_away,
								lost = lost + 1, played = played + 1 WHERE club_name = _home_team;
	ELSE
		UPDATE _flms.teams SET point = point + 1,drawn = drawn + 1, played = played + 1 WHERE club_name IN (_home_team, _away_team);
	END IF;
		
		
    -- Recalculate positions 	
	call _flms.caculate_position();
	
END;
$BODY$;
ALTER PROCEDURE _flms.update_match_results(character varying, bigint, bigint)
    OWNER TO postgres;
