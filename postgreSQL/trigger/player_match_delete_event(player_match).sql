-- Trigger: player_match_delete_event

-- DROP TRIGGER IF EXISTS player_match_delete_event ON _flms.player_match;

CREATE OR REPLACE TRIGGER player_match_delete_event
    AFTER DELETE
    ON _flms.player_match
    FOR EACH ROW
    EXECUTE FUNCTION extensions.player_match_delete_event_trigger();