-- PROCEDURE: _flms.random_referees()

-- DROP PROCEDURE IF EXISTS _flms.random_referees();

CREATE OR REPLACE PROCEDURE _flms.random_referees(
	)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
BEGIN
	delete from _flms.ref_match;
	insert into _flms.ref_match(match_id,ref_id)
	select match_id, (select ref_id from _flms.referees where match_id is not null order by random() limit 1)
	from _flms.matches;
END;
$BODY$;
ALTER PROCEDURE _flms.random_referees()
    OWNER TO postgres;
