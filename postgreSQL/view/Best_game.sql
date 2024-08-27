WITH total_goals AS (
    SELECT match_id, SUM(goal_scored) AS total_goals
    FROM _flms.team_match
    GROUP BY match_id
)
SELECT m.match_id, m.club_name, m.home_away, m.goal_scored
FROM _flms.team_match m
JOIN total_goals tg ON m.match_id = tg.match_id
WHERE tg.total_goals = (
    SELECT MAX(total_goals)
    FROM total_goals
);
