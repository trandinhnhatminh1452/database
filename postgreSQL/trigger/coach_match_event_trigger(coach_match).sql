-- Trigger: coach_match_event_trigger

-- DROP TRIGGER IF EXISTS coach_match_event_trigger ON _flms.coach_match;

CREATE OR REPLACE TRIGGER coach_match_event_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.coach_match
    FOR EACH ROW
    EXECUTE FUNCTION extensions.coach_match_event_trigger_function();