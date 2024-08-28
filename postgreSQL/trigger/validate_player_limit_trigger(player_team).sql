-- Trigger: validate_player_limit_trigger

-- DROP TRIGGER IF EXISTS validate_player_limit_trigger ON _flms.player_team;

CREATE OR REPLACE TRIGGER validate_player_limit_trigger
    BEFORE INSERT
    ON _flms.player_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_player_limit();