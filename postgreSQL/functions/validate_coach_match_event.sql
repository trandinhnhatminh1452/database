-- FUNCTION: extensions.validate_coach_match_event()

-- DROP FUNCTION IF EXISTS extensions.validate_coach_match_event();

CREATE OR REPLACE FUNCTION extensions.validate_coach_match_event()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    event_type TEXT := NEW.event;
    _club_name TEXT := NEW.club_name;
    _coach_id int := NEW.coach_id;
    current_matchweek INT;
    red_card_count INT;
    participating_coach_count INT;
BEGIN
    -- Validate event type
    IF event_type NOT IN ('participate', 'red_card', 'yellow_card') THEN
        RAISE EXCEPTION 'Invalid event type: %. Allowed values are participate, red_card, yellow_card.', event_type;
    END IF;

    IF event_type = 'red_card' THEN
        -- Get current matchweek
        SELECT matchweek INTO current_matchweek 
        FROM _flms.matches 
        WHERE match_id = NEW.match_id;

        -- Delete future participations after red card
        DELETE FROM _flms.coach_match
        WHERE club_name = _club_name
          AND coach_id = _coach_id
          AND "event" = 'participate'
          AND match_id IN (
              SELECT match_id 
              FROM _flms.matches 
              WHERE matchweek > current_matchweek 
              AND matchweek <= current_matchweek + 3
          );
    ELSIF event_type = 'participate' THEN
        -- Check for previous red cards
        SELECT COUNT(*) INTO red_card_count
        FROM _flms.coach_match
        WHERE club_name = club_name
          AND coach_name = coach_name
          AND event = 'red_card'
          AND match_id IN (
              SELECT match_id 
              FROM _flms.matches 
              WHERE matchweek < current_matchweek
              AND matchweek >= current_matchweek - 3
          );

        IF red_card_count > 0 THEN
            RAISE EXCEPTION 'Coach cannot participate due to a recent red card.';
        END IF;
		
		SELECT COUNT(*) INTO participating_coach_count
        FROM _flms.coach_match
        WHERE club_name = _club_name
          AND match_id = NEW.match_id
          AND event = 'participate';

        IF participating_coach_count >= 5 THEN
            RAISE EXCEPTION 'Maximum number of participating coaches (5) reached for this club in this match.';
        END IF;
    END IF;

    RETURN NEW;
END;
$BODY$;

ALTER FUNCTION extensions.validate_coach_match_event()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.validate_coach_match_event() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.validate_coach_match_event() TO postgres WITH GRANT OPTION;

