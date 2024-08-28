-- Trigger: validate_coach_limit_trigger

-- DROP TRIGGER IF EXISTS validate_coach_limit_trigger ON _flms.coach_team;

CREATE OR REPLACE TRIGGER validate_coach_limit_trigger
    BEFORE INSERT
    ON _flms.coach_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_coach_limit();