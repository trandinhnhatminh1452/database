-- Trigger: player_match_event_trigger

-- DROP TRIGGER IF EXISTS player_match_event_trigger ON _flms.player_match;

CREATE OR REPLACE TRIGGER player_match_event_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.player_match
    FOR EACH ROW
    EXECUTE FUNCTION extensions.player_match_event_trigger_function();