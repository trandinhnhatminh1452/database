-- Trigger: validate_contract_overlap_trigger

-- DROP TRIGGER IF EXISTS validate_contract_overlap_trigger ON _flms.player_team;

CREATE OR REPLACE TRIGGER validate_contract_overlap_trigger
    BEFORE INSERT OR UPDATE 
    ON _flms.player_team
    FOR EACH ROW
    EXECUTE FUNCTION extensions.validate_contract_overlap();