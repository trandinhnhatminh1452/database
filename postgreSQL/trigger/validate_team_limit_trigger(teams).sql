-- Trigger: validate_team_limit_trigger

-- DROP TRIGGER IF EXISTS validate_team_limit_trigger ON _flms.teams;

CREATE OR REPLACE TRIGGER validate_team_limit_trigger
    BEFORE INSERT
    ON _flms.teams
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_team_limit();