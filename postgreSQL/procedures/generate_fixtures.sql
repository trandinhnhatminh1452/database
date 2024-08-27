-- PROCEDURE: _flms.generate_fixtures()

-- DROP PROCEDURE IF EXISTS _flms.generate_fixtures();

CREATE OR REPLACE PROCEDURE _flms.generate_fixtures(
	)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
BEGIN
	WITH Teams AS (
	SELECT 
		club_code,
		ROW_NUMBER() OVER (ORDER BY club_code) AS TeamNum,  
		COUNT(*) OVER() AS TeamCount
	FROM _flms.teams
	GROUP  BY rollup(club_code)
	HAVING GROUPING(club_code) = 0 OR COUNT(*) % 2 = 1
	),
	Weeks AS (
		SELECT TeamNum AS Week
		FROM Teams
		WHERE TeamNum < TeamCount
	),
	Positioned AS (
		SELECT club_code, TeamNum, Week,
			   CASE 
				   WHEN TeamNum = TeamCount THEN TeamCount
				   ELSE 1 + ((TeamNum + Week - 1) % (TeamCount - 1)) 
			   END AS position,
			   TeamCount
		FROM Teams
		CROSS JOIN Weeks
	),
	Schedule AS (
		SELECT V.*
		FROM Positioned P1
		JOIN Positioned P2
			ON P1.Week = P2.Week
			AND P1.position = 1 + P2.TeamCount - P2.position
			AND (
				(P2.Week % 2 = 0 AND P1.position < P2.position) OR
				(P2.Week % 2 = 1 AND P1.position > P2.position)
			)
		JOIN LATERAL (VALUES 
			(P1.club_code, P2.club_code, P1.Week),
			(P2.club_code, P1.club_code, P1.Week + P1.TeamCount - 1)
		) AS V (HomeTeam, AwayTeam, Week) ON true 
		WHERE V.AwayTeam IS NOT NULL
			AND V.HomeTeam IS NOT NULL
	)

	INSERT INTO _flms.matches (match_id, matchweek)
	SELECT CONCAT(hometeam, awayteam), week
	FROM Schedule;

	INSERT INTO _flms.team_match (match_id, club_name, home_away)
	SELECT CONCAT(hometeam, awayteam), (select club_name from _flms.teams where club_code = hometeam), 'home'
	FROM Schedule
	union all
	SELECT CONCAT(hometeam, awayteam), (select club_name from _flms.teams where club_code = awayteam), 'away'
	FROM Schedule;

END;
$BODY$;
ALTER PROCEDURE _flms.generate_fixtures()
    OWNER TO postgres;

COMMENT ON PROCEDURE _flms.generate_fixtures()
    IS 'round robin algorithm
';
