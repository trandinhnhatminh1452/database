-- PROCEDURE: _flms.caculate_position()

-- DROP PROCEDURE IF EXISTS _flms.caculate_position();

CREATE OR REPLACE PROCEDURE _flms.caculate_position(
	)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
    _position int := 1;  -- Initialize position counter
    current_team record;
BEGIN
    -- Update team positions based on points
    FOR current_team IN (SELECT * FROM _flms.teams ORDER BY point DESC, goal_difference DESC) LOOP
        UPDATE _flms.teams
        SET position = _position
        WHERE club_name = current_team.club_name;
        
        _position := _position + 1;  -- Increment for the next team
    END LOOP;

END;
$BODY$;
ALTER PROCEDURE _flms.caculate_position()
    OWNER TO postgres;
