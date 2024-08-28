-- FUNCTION: extensions.update_coaches_and_teams()

-- DROP FUNCTION IF EXISTS extensions.update_coaches_and_teams();

CREATE OR REPLACE FUNCTION extensions.update_coaches_and_teams()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        -- Thêm dữ liệu vào bảng coaches
        INSERT INTO _flms.coaches ( coach_name, nationality,coach_id)
        VALUES ( NEW.coach_name, NEW.nationality,NEW.coach_id);
        
        -- Thêm dữ liệu vào bảng coach_team
        INSERT INTO _flms.coach_team ( coach_id, club_name)
        VALUES ( NEW.coach_id, NEW.club_name);

    ELSIF (TG_OP = 'UPDATE') THEN
        -- Cập nhật dữ liệu trong bảng coaches
        UPDATE _flms.coaches
        SET coach_name = NEW.coach_name, nationality = NEW.nationality
        WHERE coach_id = NEW.coach_id;

        -- Cập nhật dữ liệu trong bảng coach_team
        UPDATE _flms.coach_team
        SET club_name = NEW.club_name
        WHERE coach_id = NEW.coach_id;

    ELSIF (TG_OP = 'DELETE') THEN
        -- Xóa dữ liệu từ bảng coaches
        DELETE FROM _flms.coaches
        WHERE coach_id = OLD.coach_id;

        -- Xóa dữ liệu từ bảng coach_team
        DELETE FROM _flms.coach_team
        WHERE coach_id = OLD.coach_id;
    END IF;

    RETURN NULL;
END;
$BODY$;

ALTER FUNCTION extensions.update_coaches_and_teams()
    OWNER TO postgres;

GRANT EXECUTE ON FUNCTION extensions.update_coaches_and_teams() TO PUBLIC;

GRANT EXECUTE ON FUNCTION extensions.update_coaches_and_teams() TO postgres WITH GRANT OPTION;

