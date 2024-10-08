PGDMP      "    	            |            postgres    15.6    16.2 w   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    29059    postgres    DATABASE     t   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    ACL     2   GRANT ALL ON DATABASE postgres TO dashboard_user;
                   postgres    false    4321                        2615    29060    _flms    SCHEMA        CREATE SCHEMA _flms;
    DROP SCHEMA _flms;
                postgres    false                        2615    29061    auth    SCHEMA        CREATE SCHEMA auth;
    DROP SCHEMA auth;
                supabase_admin    false            �           0    0    SCHEMA auth    ACL        GRANT USAGE ON SCHEMA auth TO anon;
GRANT USAGE ON SCHEMA auth TO authenticated;
GRANT USAGE ON SCHEMA auth TO service_role;
GRANT ALL ON SCHEMA auth TO supabase_auth_admin;
GRANT ALL ON SCHEMA auth TO dashboard_user;
GRANT ALL ON SCHEMA auth TO postgres;
                   supabase_admin    false    27                        2615    29062 
   extensions    SCHEMA        CREATE SCHEMA extensions;
    DROP SCHEMA extensions;
                postgres    false            �           0    0    SCHEMA extensions    ACL     �   GRANT USAGE ON SCHEMA extensions TO anon;
GRANT USAGE ON SCHEMA extensions TO authenticated;
GRANT USAGE ON SCHEMA extensions TO service_role;
GRANT ALL ON SCHEMA extensions TO dashboard_user;
                   postgres    false    25                        2615    29063    graphql    SCHEMA        CREATE SCHEMA graphql;
    DROP SCHEMA graphql;
                supabase_admin    false                        2615    29064    graphql_public    SCHEMA        CREATE SCHEMA graphql_public;
    DROP SCHEMA graphql_public;
                supabase_admin    false                        2615    29065 	   pgbouncer    SCHEMA        CREATE SCHEMA pgbouncer;
    DROP SCHEMA pgbouncer;
             	   pgbouncer    false                        2615    29066    pgsodium    SCHEMA        CREATE SCHEMA pgsodium;
    DROP SCHEMA pgsodium;
                supabase_admin    false                        3079    29067    pgsodium 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pgsodium WITH SCHEMA pgsodium;
    DROP EXTENSION pgsodium;
                   false    16            �           0    0    EXTENSION pgsodium    COMMENT     \   COMMENT ON EXTENSION pgsodium IS 'Pgsodium is a modern cryptography library for Postgres.';
                        false    2                        2615    29367    realtime    SCHEMA        CREATE SCHEMA realtime;
    DROP SCHEMA realtime;
                supabase_admin    false            �           0    0    SCHEMA realtime    ACL     �   GRANT USAGE ON SCHEMA realtime TO postgres;
GRANT USAGE ON SCHEMA realtime TO anon;
GRANT USAGE ON SCHEMA realtime TO authenticated;
GRANT USAGE ON SCHEMA realtime TO service_role;
GRANT ALL ON SCHEMA realtime TO supabase_realtime_admin;
                   supabase_admin    false    14                        2615    29368    storage    SCHEMA        CREATE SCHEMA storage;
    DROP SCHEMA storage;
                supabase_admin    false            �           0    0    SCHEMA storage    ACL       GRANT ALL ON SCHEMA storage TO postgres;
GRANT USAGE ON SCHEMA storage TO anon;
GRANT USAGE ON SCHEMA storage TO authenticated;
GRANT USAGE ON SCHEMA storage TO service_role;
GRANT ALL ON SCHEMA storage TO supabase_storage_admin;
GRANT ALL ON SCHEMA storage TO dashboard_user;
                   supabase_admin    false    26                        2615    29369    vault    SCHEMA        CREATE SCHEMA vault;
    DROP SCHEMA vault;
                supabase_admin    false                        3079    30295 
   pg_graphql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;
    DROP EXTENSION pg_graphql;
                   false    20            �           0    0    EXTENSION pg_graphql    COMMENT     B   COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';
                        false    4                        3079    29380    pg_stat_statements 	   EXTENSION     J   CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;
 #   DROP EXTENSION pg_stat_statements;
                   false    25            �           0    0    EXTENSION pg_stat_statements    COMMENT     u   COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';
                        false    8                        3079    29411    pgcrypto 	   EXTENSION     @   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;
    DROP EXTENSION pgcrypto;
                   false    25            �           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    7                        3079    29448    pgjwt 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgjwt WITH SCHEMA extensions;
    DROP EXTENSION pgjwt;
                   false    7    25            �           0    0    EXTENSION pgjwt    COMMENT     C   COMMENT ON EXTENSION pgjwt IS 'JSON Web Token API for Postgresql';
                        false    6                        3079    29455    supabase_vault 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;
    DROP EXTENSION supabase_vault;
                   false    2    18            �           0    0    EXTENSION supabase_vault    COMMENT     C   COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';
                        false    3                        3079    29483 	   uuid-ossp 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;
    DROP EXTENSION "uuid-ossp";
                   false    25            �           0    0    EXTENSION "uuid-ossp"    COMMENT     W   COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';
                        false    5            �           1247    29495 	   aal_level    TYPE     K   CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);
    DROP TYPE auth.aal_level;
       auth          supabase_auth_admin    false    27            �           1247    29502    code_challenge_method    TYPE     L   CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);
 &   DROP TYPE auth.code_challenge_method;
       auth          supabase_auth_admin    false    27            �           1247    29508    factor_status    TYPE     M   CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);
    DROP TYPE auth.factor_status;
       auth          supabase_auth_admin    false    27            �           1247    29514    factor_type    TYPE     R   CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);
    DROP TYPE auth.factor_type;
       auth          supabase_auth_admin    false    27            �           1247    29520    one_time_token_type    TYPE     �   CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);
 $   DROP TYPE auth.one_time_token_type;
       auth          supabase_auth_admin    false    27            �           1247    29534    action    TYPE     o   CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);
    DROP TYPE realtime.action;
       realtime          supabase_admin    false    14            �           1247    29546    equality_op    TYPE     v   CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);
     DROP TYPE realtime.equality_op;
       realtime          supabase_admin    false    14                       1247    29563    user_defined_filter    TYPE     j   CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);
 (   DROP TYPE realtime.user_defined_filter;
       realtime          supabase_admin    false    14    1279                       1247    29566 
   wal_column    TYPE     �   CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);
    DROP TYPE realtime.wal_column;
       realtime          supabase_admin    false    14                       1247    29569    wal_rls    TYPE     s   CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);
    DROP TYPE realtime.wal_rls;
       realtime          supabase_admin    false    14                       1255    29570    caculate_position() 	   PROCEDURE       CREATE PROCEDURE _flms.caculate_position()
    LANGUAGE plpgsql
    AS $$

DECLARE
    _position int := 1;  -- Initialize position counter
    current_team record;
BEGIN
    -- Update team positions based on points
    FOR current_team IN (SELECT * FROM _flms.teams ORDER BY point DESC, goal_difference DESC) LOOP
        UPDATE _flms.teams
        SET position = _position
        WHERE club_name = current_team.club_name;
        
        _position := _position + 1;  -- Increment for the next team
    END LOOP;

END;
$$;
 *   DROP PROCEDURE _flms.caculate_position();
       _flms          postgres    false    13                       1255    29571    caculate_table_to_week(integer) 	   PROCEDURE     ]  CREATE PROCEDURE _flms.caculate_table_to_week(IN _matchweek integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
  current_team RECORD;
  match_data RECORD;
  _position integer;
  _won integer;
  _drawn integer;
  _lost integer;
BEGIN
  FOR current_team IN (SELECT * FROM _flms.teams) LOOP -- Iterate through teams
    current_team.point := 0;         
    current_team.goal_difference := 0;
    _won := 0;
    _drawn := 0;
    _lost := 0;

    FOR match_data IN (
      SELECT m1.goal_scored AS current_goals, m2.goal_scored AS opp_goals
      FROM _flms.team_match m1
      JOIN _flms.team_match m2 ON m1.match_id = m2.match_id
	    JOIN _flms.matches m3 ON m3.match_id = m2.match_id
      WHERE (m1.club_name = current_team.club_name AND m2.club_name <> current_team.club_name 
			 and m1.goal_scored is not null and m2.goal_scored is not null and m3.matchweek <= _matchweek
			) 
    ) LOOP -- Calculate for each team's matches
     
      IF match_data.current_goals > match_data.opp_goals THEN
        current_team.point := current_team.point + 3;
        _won := _won + 1;
      END IF;
      IF match_data.current_goals = match_data.opp_goals THEN
        current_team.point := current_team.point + 1;
        _drawn := _drawn + 1;
      END IF;
      IF match_data.current_goals < match_data.opp_goals THEN
        _lost := _lost + 1;
      END IF;

      current_team.goal_difference := current_team.goal_difference + match_data.current_goals - match_data.opp_goals;
    END LOOP; -- End of match calculation loop

    UPDATE _flms.teams
    SET point = current_team.point,
        goal_difference = current_team.goal_difference,
        won = _won,
        drawn = _drawn,
        lost = _lost,
        played = won+drawn+lost
    WHERE club_name = current_team.club_name; -- Update the team's record
  END LOOP; -- End of team iteration loop

  _position := 1;
  FOR current_team IN (SELECT * FROM _flms.teams order by point desc, goal_difference desc) LOOP -- Iterate through teams
    update _flms.teams
    set position = _position
    where club_name = current_team.club_name;
    _position := _position + 1;
  end loop;
END;
$$;
 D   DROP PROCEDURE _flms.caculate_table_to_week(IN _matchweek integer);
       _flms          postgres    false    13            �           0    0 7   PROCEDURE caculate_table_to_week(IN _matchweek integer)    COMMENT     v   COMMENT ON PROCEDURE _flms.caculate_table_to_week(IN _matchweek integer) IS 'caculate the table to the choosing GW
';
          _flms          postgres    false    519                       1255    29572    delete_coach(integer) 	   PROCEDURE     2  CREATE PROCEDURE _flms.delete_coach(IN _coach_id integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
    -- Delete coach from coach_team
    DELETE FROM _flms.coach_team WHERE coach_id = _coach_id;

    -- Delete coach from coaches
    DELETE FROM _flms.coaches WHERE coach_id = _coach_id;
	
	

END;
$$;
 9   DROP PROCEDURE _flms.delete_coach(IN _coach_id integer);
       _flms          postgres    false    13            	           1255    29573 .   delete_coach_squad(integer, character varying) 	   PROCEDURE       CREATE PROCEDURE _flms.delete_coach_squad(IN _coach_id integer, IN _match_id character varying)
    LANGUAGE plpgsql
    AS $$

DECLARE
BEGIN
	
	delete from _flms.coach_match 
	WHERE coach_id = _coach_id and match_id = _match_id and "event" in ('participate');

END;
$$;
 _   DROP PROCEDURE _flms.delete_coach_squad(IN _coach_id integer, IN _match_id character varying);
       _flms          postgres    false    13            �           0    0 R   PROCEDURE delete_coach_squad(IN _coach_id integer, IN _match_id character varying)    COMMENT     �   COMMENT ON PROCEDURE _flms.delete_coach_squad(IN _coach_id integer, IN _match_id character varying) IS 'unsubmit coach for match';
          _flms          postgres    false    521            
           1255    29574 M   delete_event(character varying, integer, character varying, integer, integer) 	   PROCEDURE     �  CREATE PROCEDURE _flms.delete_event(IN _match_id character varying, IN _player_id integer, IN _event character varying, IN _event_half integer, IN _event_time integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
  _in_club varchar; -- Declare and initialize the variable
  _is_home varchar;
  _goal_home bigint;
  _goal_away bigint;
BEGIN
	
  	SELECT t.club_name INTO _in_club
    FROM _flms.player_team t
    WHERE t.player_id = _player_id;
	
	if _event in ('goal') then
		
		select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = _match_id and club_name = _in_club;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = _match_id and club_name != _in_club;
		
		_goal_home := _goal_home - 1;
		if _is_home = 'home' then
			call _flms.update_match_results(_match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(_match_id, _goal_away, _goal_home);
		end if;
	end if;

    delete from _flms.player_match
	where match_id = _match_id and
		player_id = _player_id and
		club_name = _in_club and
		"event" = "_event" and
		event_half = _event_half and
		event_time = _event_time;
		
	
END;
$$;
 �   DROP PROCEDURE _flms.delete_event(IN _match_id character varying, IN _player_id integer, IN _event character varying, IN _event_half integer, IN _event_time integer);
       _flms          postgres    false    13                       1255    29575 '   delete_match_results(character varying) 	   PROCEDURE     �  CREATE PROCEDURE _flms.delete_match_results(IN _match_id character varying)
    LANGUAGE plpgsql
    AS $$
DECLARE
  _home_team varchar;
  _away_team varchar;
  _home_scored integer;
  _away_scored integer;
BEGIN
  -- Fetch team names and goal scores; check if goal scores are NULL
  SELECT club_name, goal_scored INTO _home_team, _home_scored
  FROM _flms.team_match
  WHERE match_id = _match_id AND home_away = 'home' AND goal_scored IS NOT NULL;

  SELECT club_name, goal_scored INTO _away_team, _away_scored
  FROM _flms.team_match
  WHERE match_id = _match_id AND home_away = 'away' AND goal_scored IS NOT NULL;

  -- Proceed only if goal scores were found for both teams
  IF _home_scored IS NOT NULL AND _away_scored IS NOT NULL THEN

    -- Update points based on the match outcome
    IF _home_scored > _away_scored THEN
        UPDATE _flms.teams SET point = point - 3, goal_difference = goal_difference - _home_scored + _away_scored,
	  							won = won - 1, played = played - 1 WHERE club_name = _home_team;
        UPDATE _flms.teams SET point = point, goal_difference = goal_difference + _home_scored - _away_scored,
								lost = lost - 1, played = played - 1 WHERE club_name = _away_team;
    ELSIF _home_scored < _away_scored THEN
        UPDATE _flms.teams SET point = point - 3, goal_difference = goal_difference + _home_scored - _away_scored,
								won = won - 1, played = played - 1 WHERE club_name = _away_team;
        UPDATE _flms.teams SET point = point, goal_difference = goal_difference - _home_scored + _away_scored,
								lost = lost - 1, played = played - 1 WHERE club_name = _home_team;
    ELSE
        UPDATE _flms.teams SET point = point - 1, drawn = drawn - 1, played = played - 1 WHERE club_name IN (_home_team, _away_team);
    END IF;

    -- Reset the goal_scored for both teams
    UPDATE _flms.team_match
    SET goal_scored = NULL
    WHERE match_id = _match_id;

    -- Recalculate positions
    call _flms.caculate_position();
  
  END IF; -- End of conditional block 

END;
$$;
 K   DROP PROCEDURE _flms.delete_match_results(IN _match_id character varying);
       _flms          postgres    false    13            �           0    0 >   PROCEDURE delete_match_results(IN _match_id character varying)    COMMENT     �   COMMENT ON PROCEDURE _flms.delete_match_results(IN _match_id character varying) IS 'this procedure is subprocedure of update_match_results
handle the case that goal_score was existed before';
          _flms          postgres    false    523                       1255    29576    delete_player(integer) 	   PROCEDURE     ?  CREATE PROCEDURE _flms.delete_player(IN _player_id integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
    
    -- Delete player from player_team
    DELETE FROM _flms.player_team WHERE player_id = _player_id;

    -- Delete player from players
    DELETE FROM _flms.players WHERE player_id = _player_id;
	

END;
$$;
 ;   DROP PROCEDURE _flms.delete_player(IN _player_id integer);
       _flms          postgres    false    13                       1255    29577 /   delete_player_squad(integer, character varying) 	   PROCEDURE       CREATE PROCEDURE _flms.delete_player_squad(IN _player_id integer, IN _match_id character varying)
    LANGUAGE plpgsql
    AS $$

DECLARE
BEGIN
	
	delete from _flms.player_match
	WHERE player_id = _player_id and match_id = _match_id and "event" in ('start','sub');

END;
$$;
 a   DROP PROCEDURE _flms.delete_player_squad(IN _player_id integer, IN _match_id character varying);
       _flms          postgres    false    13            �           0    0 T   PROCEDURE delete_player_squad(IN _player_id integer, IN _match_id character varying)    COMMENT     �   COMMENT ON PROCEDURE _flms.delete_player_squad(IN _player_id integer, IN _match_id character varying) IS 'unsubmit player for match';
          _flms          postgres    false    525                       1255    29578    generate_fixtures() 	   PROCEDURE     -  CREATE PROCEDURE _flms.generate_fixtures()
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
	WITH Teams AS (
	SELECT 
		club_code,
		ROW_NUMBER() OVER (ORDER BY club_code) AS TeamNum,  
		COUNT(*) OVER() AS TeamCount
	FROM _flms.teams
	GROUP  BY rollup(club_code)
	HAVING GROUPING(club_code) = 0 OR COUNT(*) % 2 = 1
	),
	Weeks AS (
		SELECT TeamNum AS Week
		FROM Teams
		WHERE TeamNum < TeamCount
	),
	Positioned AS (
		SELECT club_code, TeamNum, Week,
			   CASE 
				   WHEN TeamNum = TeamCount THEN TeamCount
				   ELSE 1 + ((TeamNum + Week - 1) % (TeamCount - 1)) 
			   END AS position,
			   TeamCount
		FROM Teams
		CROSS JOIN Weeks
	),
	Schedule AS (
		SELECT V.*
		FROM Positioned P1
		JOIN Positioned P2
			ON P1.Week = P2.Week
			AND P1.position = 1 + P2.TeamCount - P2.position
			AND (
				(P2.Week % 2 = 0 AND P1.position < P2.position) OR
				(P2.Week % 2 = 1 AND P1.position > P2.position)
			)
		JOIN LATERAL (VALUES 
			(P1.club_code, P2.club_code, P1.Week),
			(P2.club_code, P1.club_code, P1.Week + P1.TeamCount - 1)
		) AS V (HomeTeam, AwayTeam, Week) ON true 
		WHERE V.AwayTeam IS NOT NULL
			AND V.HomeTeam IS NOT NULL
	)

	INSERT INTO _flms.matches (match_id, matchweek)
	SELECT CONCAT(hometeam, awayteam), week
	FROM Schedule;

	INSERT INTO _flms.team_match (match_id, club_name, home_away)
	SELECT CONCAT(hometeam, awayteam), (select club_name from _flms.teams where club_code = hometeam), 'home'
	FROM Schedule
	union all
	SELECT CONCAT(hometeam, awayteam), (select club_name from _flms.teams where club_code = awayteam), 'away'
	FROM Schedule;

END;
$$;
 *   DROP PROCEDURE _flms.generate_fixtures();
       _flms          postgres    false    13            �           0    0    PROCEDURE generate_fixtures()    COMMENT     L   COMMENT ON PROCEDURE _flms.generate_fixtures() IS 'round robin algorithm
';
          _flms          postgres    false    526                       1255    29579 2   generate_match_times(date, time without time zone) 	   PROCEDURE     �  CREATE PROCEDURE _flms.generate_match_times(IN start_date date, IN match_hour time without time zone)
    LANGUAGE plpgsql
    AS $$
DECLARE
    current_week integer;
BEGIN
    FOR current_week IN (SELECT DISTINCT matchweek FROM _flms.matches ORDER BY matchweek asc)
    LOOP
        UPDATE _flms.matches
        SET match_time = (start_date + ((current_week - 1) * interval '7 days'))::DATE + match_hour::TIME
        WHERE matchweek = current_week;
    END LOOP;
END;
$$;
 e   DROP PROCEDURE _flms.generate_match_times(IN start_date date, IN match_hour time without time zone);
       _flms          postgres    false    13            �           0    0 X   PROCEDURE generate_match_times(IN start_date date, IN match_hour time without time zone)    COMMENT     �   COMMENT ON PROCEDURE _flms.generate_match_times(IN start_date date, IN match_hour time without time zone) IS 'generate match time by following rules:
GW interval is 7 days, start date and time is selectable';
          _flms          postgres    false    527            Q           1255    32192 W   insert_coach(character varying, character varying, character varying, date, date, date) 	   PROCEDURE     �  CREATE PROCEDURE _flms.insert_coach(IN _coach_name character varying, IN _club_name character varying, IN _nationality character varying DEFAULT NULL::character varying, IN _date_of_birth date DEFAULT NULL::date, IN begin_date date DEFAULT '2023-01-01'::date, IN end_date date DEFAULT '2023-12-31'::date)
    LANGUAGE plpgsql
    AS $$
DECLARE
    _coach_id INTEGER;
    coach_count INTEGER;
    overlap_count INTEGER;
BEGIN
    -- Check club coach limit
    SELECT COUNT(*) INTO coach_count
    FROM _flms.coach_team 
    WHERE club_name = _club_name;
    
    IF coach_count >= 15 THEN 
        RAISE EXCEPTION 'Club coach limit reached (15 coaches). Cannot insert more coaches for %', _club_name;
    END IF;

    -- Check if coach already exists in coaches table
    SELECT coach_id INTO _coach_id
    FROM _flms.coaches
    WHERE coach_name = _coach_name AND nationality = _nationality AND date_of_birth = _date_of_birth;
    
    IF _coach_id IS NULL THEN
        -- Insert coach into coaches table
        INSERT INTO _flms.coaches (coach_name, nationality, date_of_birth) 
        VALUES (_coach_name, _nationality, _date_of_birth)
        RETURNING coach_id INTO _coach_id;

        -- Insert coach into coach_team table
        INSERT INTO _flms.coach_team (club_name, coach_id, "begin", "end") 
        VALUES (_club_name, _coach_id, begin_date, end_date);
    ELSE
        -- Check for contract overlap
        SELECT COUNT(*) INTO overlap_count
        FROM _flms.coach_team
        WHERE coach_id = _coach_id
          AND (begin_date, end_date) OVERLAPS ("begin", "end");
        
        IF overlap_count > 0 THEN
            RAISE EXCEPTION 'Contract already exists for coach % on this period.', _coach_id;
        END IF;
        
        -- Insert coach into coach_team table
        INSERT INTO _flms.coach_team (club_name, coach_id, "begin", "end") 
        VALUES (_club_name, _coach_id, begin_date, end_date);
    END IF;
END;
$$;
 �   DROP PROCEDURE _flms.insert_coach(IN _coach_name character varying, IN _club_name character varying, IN _nationality character varying, IN _date_of_birth date, IN begin_date date, IN end_date date);
       _flms          postgres    false    13            �           0    0 �   PROCEDURE insert_coach(IN _coach_name character varying, IN _club_name character varying, IN _nationality character varying, IN _date_of_birth date, IN begin_date date, IN end_date date)    COMMENT     �   COMMENT ON PROCEDURE _flms.insert_coach(IN _coach_name character varying, IN _club_name character varying, IN _nationality character varying, IN _date_of_birth date, IN begin_date date, IN end_date date) IS 'coach limit for each club is 15';
          _flms          postgres    false    593                       1255    29581 a   insert_player(character varying, character varying, character varying, date, integer, date, date) 	   PROCEDURE     �  CREATE PROCEDURE _flms.insert_player(IN _player_name character varying, IN _club_name character varying, IN pos character varying DEFAULT NULL::character varying, IN _date_of_birth date DEFAULT NULL::date, IN shirt_number integer DEFAULT NULL::integer, IN begin_date date DEFAULT '2023-01-01'::date, IN end_date date DEFAULT '2023-12-31'::date)
    LANGUAGE plpgsql
    AS $$

DECLARE
    _player_id INTEGER;
    player_count INTEGER;
	overlap_count INTEGER;
BEGIN
	--check if player already exist in players table
	Select player_id into _player_id
	from _flms.players
	where player_name = _player_name and position = pos and date_of_birth = _date_of_birth;
	
	if _player_id is null then
		-- Insert player into players table
		INSERT INTO _flms.players (player_name, position, date_of_birth) 
		VALUES (_player_name, pos, _date_of_birth)
		RETURNING player_id INTO _player_id;

		-- Insert player into player_team table
		INSERT INTO _flms.player_team (club_name, player_id, shirt_number, "begin" ,"end") 
		VALUES (_club_name, _player_id, shirt_number, begin_date, end_date);
	else
		-- Insert player into player_team table
		INSERT INTO _flms.player_team (club_name, player_id, shirt_number, "begin" ,"end") 
		VALUES (_club_name, _player_id, shirt_number, begin_date, end_date);
	End if;

    EXCEPTION 
    WHEN unique_violation THEN 
        RAISE NOTICE 'A player with this shirt number already exists for this club.';
        ROLLBACK;  
	COMMIT; 

END;
$$;
 �   DROP PROCEDURE _flms.insert_player(IN _player_name character varying, IN _club_name character varying, IN pos character varying, IN _date_of_birth date, IN shirt_number integer, IN begin_date date, IN end_date date);
       _flms          postgres    false    13            �           0    0 �   PROCEDURE insert_player(IN _player_name character varying, IN _club_name character varying, IN pos character varying, IN _date_of_birth date, IN shirt_number integer, IN begin_date date, IN end_date date)    COMMENT     &  COMMENT ON PROCEDURE _flms.insert_player(IN _player_name character varying, IN _club_name character varying, IN pos character varying, IN _date_of_birth date, IN shirt_number integer, IN begin_date date, IN end_date date) IS 'player limit for each club is 50
check for duplicate shirt number';
          _flms          postgres    false    528                       1255    29582 h   insert_team_stadium(character varying, character varying, character varying, character varying, integer) 	   PROCEDURE     6  CREATE PROCEDURE _flms.insert_team_stadium(IN _club_name character varying, IN _club_code character varying, IN _stadium_name character varying, IN _location character varying, IN _capacity integer)
    LANGUAGE plpgsql
    AS $$

DECLARE
BEGIN
    -- Insert stadium into stadiums table
    INSERT INTO _flms.stadiums (stadium_name,"location",capacity) 
    VALUES (_stadium_name,_location,_capacity);

    -- Insert team into teams table
    INSERT INTO _flms.teams (club_name, stadium_name, club_code) 
    VALUES (_club_name, _stadium_name, _club_code);
END;
$$;
 �   DROP PROCEDURE _flms.insert_team_stadium(IN _club_name character varying, IN _club_code character varying, IN _stadium_name character varying, IN _location character varying, IN _capacity integer);
       _flms          postgres    false    13                       1255    29583    random_referees() 	   PROCEDURE     3  CREATE PROCEDURE _flms.random_referees()
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
	delete from _flms.ref_match;
	insert into _flms.ref_match(match_id,ref_id)
	select match_id, (select ref_id from _flms.referees where match_id is not null order by random() limit 1)
	from _flms.matches;
END;
$$;
 (   DROP PROCEDURE _flms.random_referees();
       _flms          postgres    false    13                       1255    29584 A   submit_coach_squad(character varying, character varying, integer) 	   PROCEDURE     +  CREATE PROCEDURE _flms.submit_coach_squad(IN _match_id character varying, IN _club_name character varying, IN _coach_id integer)
    LANGUAGE plpgsql
    AS $$

DECLARE
  	_in_club integer; -- Declare and initialize the variable
	_ban_check integer;
	current_matchweek integer;
	_event_check_matchweek integer;
  	_coach_count integer;
BEGIN
	
  	SELECT t.coach_id INTO _in_club
    FROM _flms.coach_team t
    WHERE t.club_name = _club_name AND t.coach_id = _coach_id
		and (select match_time from _flms.matches where match_id = _match_id) between t.begin and t.end;

 	 IF _in_club is null THEN
		RAISE exception 'Coach % is not a member of club %', _coach_id, _club_name;
  	END IF;
  	
	--check if there's matchweek that have card
	select m.matchweek into _event_check_matchweek
	from _flms.coach_match p
	join _flms.matches m on p.match_id = m.match_id
	where p.coach_id = _coach_id and p.event in ('red_card')
	order by m.matchweek desc
	limit 1;

	select matchweek into current_matchweek
	from _flms.matches m
	where m.match_id = _match_id;

	if _event_check_matchweek is not null then
		if current_matchweek - _event_check_matchweek < 4 and current_matchweek - _event_check_matchweek > 0 then
			RAISE exception 'Coach % is on punishing', _coach_id;
			COMMIT;
		end if;
	end if;

    Select count(*) into _coach_count
	from _flms.coach_match
	where match_id = _match_id and club_name = _club_name and "event" = 'participate';

	
	INSERT INTO _flms.coach_match(
	coach_id, club_name, "event", match_id)
	VALUES (_coach_id, _club_name,'participate', _match_id);

END;
$$;
 �   DROP PROCEDURE _flms.submit_coach_squad(IN _match_id character varying, IN _club_name character varying, IN _coach_id integer);
       _flms          postgres    false    13            �           0    0 s   PROCEDURE submit_coach_squad(IN _match_id character varying, IN _club_name character varying, IN _coach_id integer)    COMMENT     �   COMMENT ON PROCEDURE _flms.submit_coach_squad(IN _match_id character varying, IN _club_name character varying, IN _coach_id integer) IS 'same as submit_player_squad';
          _flms          postgres    false    531                       1255    29585 M   submit_event(character varying, integer, character varying, integer, integer) 	   PROCEDURE       CREATE PROCEDURE _flms.submit_event(IN _match_id character varying, IN _player_id integer, IN _event character varying, IN _event_half integer, IN _event_time integer)
    LANGUAGE plpgsql
    AS $$

DECLARE
  _in_club varchar;
  _in_match_event varchar;
  _in_match_time integer;
  _in_match_half integer;
  current_matchweek integer;
  _is_home varchar;
  _goal_home bigint;
  _goal_away bigint;
  _temp integer;
BEGIN
	
  	SELECT t.club_name INTO _in_club
    FROM _flms.player_team t
    WHERE t.player_id = _player_id;
	
	IF _event in ('start','sub') then
		raise exception 'Event not able to add';
	end if;
	
	IF _event = 'in' then
		select player_id into _temp
		from _flms.player_match m
		where m.player_id = _player_id and m.match_id = _match_id and m.event = 'sub';
		
		if _temp is null then
			raise exception 'Player is not in the sub lineup';
		end if;
		
		raise notice 'Remember to submit the OUT player';
	end if;
	
	IF _event = 'out' then
		raise notice 'Remember to submit the IN player';
	end if;
	
	--Check if the player is on the field or not
	If _event != 'in' then
		Select "event" into _in_match_event
		from _flms.player_match
		where player_id = _player_id and match_id = _match_id and event in ('start','in');
		
		if _in_match_event is null then
			raise exception 'Player % not on the field yet', _player_id;
		end if;
		
		IF _in_match_event != 'start' then
			IF _in_match_event = 'in' then
				select event_time,event_half into _in_match_time,_in_match_half
				from _flms.player_match
				where player_id = _player_id and match_id = _match_id and "event" = 'in';

				IF _in_match_half > _event_half then
				ELSIF _in_match_half = _event_half then
					IF _in_match_time > _event_time then
						raise exception 'Player % not on the field yet', _player_id;
					END IF;
				End if;
			ELSE
				raise exception 'Player % not on the field yet', _player_id;
			End if;
		End if;
	End if;
	
	if _event = 'red_card' then
		select matchweek into current_matchweek
		from _flms.matches where match_id = _match_id;
		
		update _flms.player_match p
		set player_id = null
		from _flms.matches m
		where m.match_id = p.match_id and m.matchweek < current_matchweek + 4 and p.player_id = _player_id and "event" in ('start','sub');
		raise notice 'Player % will be banned from GW % to GW %', _player_id,current_matchweek+1,current_matchweek+3;
	end if;
	
	if _event in ('goal') then
		
		select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = _match_id and club_name = _in_club;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = _match_id and club_name != _in_club;
		
		_goal_home:= _goal_home + 1;
		if _is_home = 'home' then
			call _flms.update_match_results(_match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(_match_id, _goal_away, _goal_home);
		end if;
	end if;
	

	INSERT INTO _flms.player_match(match_id,player_id,club_name,"event",event_half,event_time)
	Values (_match_id,_player_id,_in_club,"_event",_event_half,_event_time);

END;
$$;
 �   DROP PROCEDURE _flms.submit_event(IN _match_id character varying, IN _player_id integer, IN _event character varying, IN _event_half integer, IN _event_time integer);
       _flms          postgres    false    13            �           0    0 �   PROCEDURE submit_event(IN _match_id character varying, IN _player_id integer, IN _event character varying, IN _event_half integer, IN _event_time integer)    COMMENT     T  COMMENT ON PROCEDURE _flms.submit_event(IN _match_id character varying, IN _player_id integer, IN _event character varying, IN _event_half integer, IN _event_time integer) IS 'check for player_id is on the field yet or not
if event = redcard
check for 3 nearest match that the player already have been submited to squad select
and delete';
          _flms          postgres    false    532                       1255    29586 U   submit_player_squad(integer, character varying, character varying, character varying) 	   PROCEDURE     1  CREATE PROCEDURE _flms.submit_player_squad(IN _player_id integer, IN _club_name character varying, IN _match_id character varying, IN _event character varying)
    LANGUAGE plpgsql
    AS $$

DECLARE
 	_in_club integer; -- Declare and initialize the variable
	_ban_check integer;
	current_matchweek integer;
	_event_check_matchweek integer;
	_player_count integer;
BEGIN
	
  	SELECT t.player_id INTO _in_club
    FROM _flms.player_team t
    WHERE t.club_name = _club_name AND t.player_id = _player_id 
		and (select match_time from _flms.matches where match_id = _match_id) between t.begin and t.end;

 	IF _in_club is null THEN
		RAISE exception 'Player % is not a member of club %', _player_id, _club_name;
 	END IF;
	
	IF _event not in ('start','sub') then
		RAISE exception 'This procedure use for submit squad purpose only';
 	END IF;

	--check if there's matchweek that have card
	select m.matchweek into _event_check_matchweek
	from _flms.player_match p
	join _flms.matches m on p.match_id = m.match_id
	where p.player_id = _player_id and p.event in ('red_card')
	order by m.matchweek desc
	limit 1;

	select matchweek into current_matchweek
	from _flms.matches m
	where m.match_id = _match_id;

	if _event_check_matchweek is not null then
		if current_matchweek - _event_check_matchweek < 4 and current_matchweek - _event_check_matchweek > 0 then
			RAISE exception 'Player % is on punishing', _player_id;
			COMMIT;
		end if;
	end if;

	
	INSERT INTO _flms.player_match(
	player_id, club_name, "event", match_id)
	VALUES (_player_id, _club_name,_event, _match_id);

END;
$$;
 �   DROP PROCEDURE _flms.submit_player_squad(IN _player_id integer, IN _club_name character varying, IN _match_id character varying, IN _event character varying);
       _flms          postgres    false    13            �           0    0 �   PROCEDURE submit_player_squad(IN _player_id integer, IN _club_name character varying, IN _match_id character varying, IN _event character varying)    COMMENT     �   COMMENT ON PROCEDURE _flms.submit_player_squad(IN _player_id integer, IN _club_name character varying, IN _match_id character varying, IN _event character varying) IS '1. check if player is in club
2. check if there is red card for 3 gw ago';
          _flms          postgres    false    533                       1255    29587    ticket_distribute() 	   PROCEDURE     �  CREATE PROCEDURE _flms.ticket_distribute()
    LANGUAGE plpgsql
    AS $$

declare
  match_rec record;
  _capacity integer;
  _away_ticket integer;
begin
  for match_rec in (select match_id from _flms.matches) loop
    SELECT s.capacity 
    INTO _capacity 
    FROM _flms.team_match tm
    Inner JOIN _flms.teams t  on t.club_name = tm.club_name
    Inner JOIN _flms.stadiums s on t.stadium_name = s.stadium_name
    WHERE tm.match_id = match_rec.match_id and tm.home_away = 'home';

    IF _capacity > 30000 THEN _away_ticket := _capacity * 10 / 100;
    else  _away_ticket := 3000; end if;

    update _flms.matches m
    set away_ticket = _away_ticket, home_ticket = _capacity - _away_ticket
    where m.match_id = match_rec.match_id;

  end loop;
end;
$$;
 *   DROP PROCEDURE _flms.ticket_distribute();
       _flms          postgres    false    13            �           0    0    PROCEDURE ticket_distribute()    COMMENT     _   COMMENT ON PROCEDURE _flms.ticket_distribute() IS 'distribute ticket. 10%, min 3000 for away';
          _flms          postgres    false    534            P           1255    32190 e   update_coach_info(integer, character varying, character varying, character varying, date, date, date) 	   PROCEDURE     �  CREATE PROCEDURE _flms.update_coach_info(IN _coach_id integer, IN _club_name character varying, IN _coach_name character varying, IN new_nation character varying DEFAULT NULL::character varying, IN new_date_of_birth date DEFAULT NULL::date, IN begin_date date DEFAULT NULL::date, IN end_date date DEFAULT NULL::date)
    LANGUAGE plpgsql
    AS $$
DECLARE
    overlap_count INTEGER;
BEGIN
    -- Update coach information (only if a new value is provided)
    UPDATE _flms.coaches
    SET 
		coach_name = COALESCE(_coach_name,coach_name),
        nationality = COALESCE(new_nation, nationality),
        date_of_birth = COALESCE(new_date_of_birth, date_of_birth)
	WHERE coach_id = _coach_id;	

END;
$$;
 �   DROP PROCEDURE _flms.update_coach_info(IN _coach_id integer, IN _club_name character varying, IN _coach_name character varying, IN new_nation character varying, IN new_date_of_birth date, IN begin_date date, IN end_date date);
       _flms          postgres    false    13            �           0    0 �   PROCEDURE update_coach_info(IN _coach_id integer, IN _club_name character varying, IN _coach_name character varying, IN new_nation character varying, IN new_date_of_birth date, IN begin_date date, IN end_date date)    COMMENT     	  COMMENT ON PROCEDURE _flms.update_coach_info(IN _coach_id integer, IN _club_name character varying, IN _coach_name character varying, IN new_nation character varying, IN new_date_of_birth date, IN begin_date date, IN end_date date) IS 'update provided info only
';
          _flms          postgres    false    592                       1255    29589 7   update_match_results(character varying, bigint, bigint) 	   PROCEDURE     	  CREATE PROCEDURE _flms.update_match_results(IN _match_id character varying, IN _goal_scored_home bigint, IN _goal_scored_away bigint)
    LANGUAGE plpgsql
    AS $$

DECLARE
    _home_team varchar;
    _away_team varchar;
	_prev_home_score bigint;
	_prev_away_score bigint;
BEGIN

    -- Determine home and away teams
    SELECT club_name INTO _home_team
    FROM _flms.team_match
    WHERE match_id = _match_id AND home_away = 'home';

    SELECT club_name INTO _away_team
    FROM _flms.team_match
    WHERE match_id = _match_id AND home_away = 'away';
	
	
	-- Check if goal_scored exists for the match
    call _flms.delete_match_results(_match_id);
		
	-- Update the goal_scored for both teams
	UPDATE _flms.team_match
	SET goal_scored = _goal_scored_home
	WHERE match_id = _match_id AND home_away = 'home';

	UPDATE _flms.team_match
	SET goal_scored = _goal_scored_away
	WHERE match_id = _match_id AND home_away = 'away';

	-- Update points based on the match outcome
	IF _goal_scored_home > _goal_scored_away THEN
		UPDATE _flms.teams SET point = point + 3, goal_difference = goal_difference + _goal_scored_home - _goal_scored_away,
								won = won + 1, played = played + 1 WHERE club_name = _home_team;
		UPDATE _flms.teams SET point = point, goal_difference = goal_difference - _goal_scored_home + _goal_scored_away,
								lost = lost + 1, played = played + 1 WHERE club_name = _away_team;
	ELSIF _goal_scored_home < _goal_scored_away THEN
		UPDATE _flms.teams SET point = point + 3, goal_difference = goal_difference - _goal_scored_home + _goal_scored_away,
								won = won + 1, played = played + 1 WHERE club_name = _away_team;
		UPDATE _flms.teams SET point = point, goal_difference = goal_difference + _goal_scored_home - _goal_scored_away,
								lost = lost + 1, played = played + 1 WHERE club_name = _home_team;
	ELSE
		UPDATE _flms.teams SET point = point + 1,drawn = drawn + 1, played = played + 1 WHERE club_name IN (_home_team, _away_team);
	END IF;
		
		
    -- Recalculate positions 	
	call _flms.caculate_position();
	
END;
$$;
 �   DROP PROCEDURE _flms.update_match_results(IN _match_id character varying, IN _goal_scored_home bigint, IN _goal_scored_away bigint);
       _flms          postgres    false    13                       1255    29590 o   update_player_info(integer, character varying, character varying, character varying, date, integer, date, date) 	   PROCEDURE     i  CREATE PROCEDURE _flms.update_player_info(IN _player_id integer, IN _club_name character varying, IN _player_name character varying, IN _position character varying DEFAULT NULL::character varying, IN new_date_of_birth date DEFAULT NULL::date, IN _shirt_number integer DEFAULT NULL::integer, IN begin_date date DEFAULT '2023-01-01'::date, IN end_date date DEFAULT '2023-12-31'::date)
    LANGUAGE plpgsql
    AS $$
DECLARE
	overlap_count INTEGER;
BEGIN
    -- Update player information (only if a new value is provided)
    UPDATE _flms.players
    SET 
		player_name = COALESCE(_player_name,player_name),
        position = COALESCE(_position, position),
        date_of_birth = COALESCE(new_date_of_birth, date_of_birth)
	WHERE player_id = _player_id;

	
	EXCEPTION
    WHEN unique_violation THEN --  duplicate shirt number error
        ROLLBACK;
    COMMIT;
	

END;
$$;
 �   DROP PROCEDURE _flms.update_player_info(IN _player_id integer, IN _club_name character varying, IN _player_name character varying, IN _position character varying, IN new_date_of_birth date, IN _shirt_number integer, IN begin_date date, IN end_date date);
       _flms          postgres    false    13            �           0    0 �   PROCEDURE update_player_info(IN _player_id integer, IN _club_name character varying, IN _player_name character varying, IN _position character varying, IN new_date_of_birth date, IN _shirt_number integer, IN begin_date date, IN end_date date)    COMMENT     E  COMMENT ON PROCEDURE _flms.update_player_info(IN _player_id integer, IN _club_name character varying, IN _player_name character varying, IN _position character varying, IN new_date_of_birth date, IN _shirt_number integer, IN begin_date date, IN end_date date) IS 'update provided info only
check for duplicate shirt number';
          _flms          postgres    false    536            S           1255    32196    validate_contract_overlap()    FUNCTION       CREATE FUNCTION _flms.validate_contract_overlap() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Kiểm tra sự trùng lặp hợp đồng tại đây
    -- Ví dụ: nếu dữ liệu đang chèn hoặc cập nhật trùng lặp với dữ liệu hiện có

    -- Giả sử bạn có một bảng chứa hợp đồng, và bạn muốn kiểm tra chồng lấp:
    IF EXISTS (
        SELECT 1
        FROM _flms.player_team
        WHERE player_id = NEW.player_id
          AND (NEW.begin_date, NEW.end_date) OVERLAPS (begin_date, end_date)
    ) THEN
        RAISE EXCEPTION 'Contract overlap detected for player_id %', NEW.player_id;
    END IF;

    -- Trả về NEW để cho phép hành động INSERT hoặc UPDATE tiếp tục
    RETURN NEW;
END;
$$;
 1   DROP FUNCTION _flms.validate_contract_overlap();
       _flms          postgres    false    13                       1255    29591    email()    FUNCTION       CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;
    DROP FUNCTION auth.email();
       auth          supabase_auth_admin    false    27            �           0    0    FUNCTION email()    COMMENT     X   COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';
          auth          supabase_auth_admin    false    537            �           0    0    FUNCTION email()    ACL     f   GRANT ALL ON FUNCTION auth.email() TO dashboard_user;
GRANT ALL ON FUNCTION auth.email() TO postgres;
          auth          supabase_auth_admin    false    537                       1255    29592    jwt()    FUNCTION     �   CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;
    DROP FUNCTION auth.jwt();
       auth          supabase_auth_admin    false    27            �           0    0    FUNCTION jwt()    ACL     b   GRANT ALL ON FUNCTION auth.jwt() TO postgres;
GRANT ALL ON FUNCTION auth.jwt() TO dashboard_user;
          auth          supabase_auth_admin    false    538                       1255    29593    role()    FUNCTION        CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;
    DROP FUNCTION auth.role();
       auth          supabase_auth_admin    false    27            �           0    0    FUNCTION role()    COMMENT     V   COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';
          auth          supabase_auth_admin    false    539                        0    0    FUNCTION role()    ACL     d   GRANT ALL ON FUNCTION auth.role() TO dashboard_user;
GRANT ALL ON FUNCTION auth.role() TO postgres;
          auth          supabase_auth_admin    false    539                       1255    29594    uid()    FUNCTION     �   CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;
    DROP FUNCTION auth.uid();
       auth          supabase_auth_admin    false    27                       0    0    FUNCTION uid()    COMMENT     T   COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';
          auth          supabase_auth_admin    false    540                       0    0    FUNCTION uid()    ACL     b   GRANT ALL ON FUNCTION auth.uid() TO dashboard_user;
GRANT ALL ON FUNCTION auth.uid() TO postgres;
          auth          supabase_auth_admin    false    540                       0    0 D   FUNCTION algorithm_sign(signables text, secret text, algorithm text)    ACL     �   GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.algorithm_sign(signables text, secret text, algorithm text) TO dashboard_user;
       
   extensions          supabase_admin    false    501                       0    0    FUNCTION armor(bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.armor(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    495                       0    0 %   FUNCTION armor(bytea, text[], text[])    ACL     �   GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.armor(bytea, text[], text[]) TO dashboard_user;
       
   extensions          supabase_admin    false    496                       1255    29595 $   coach_match_event_trigger_function()    FUNCTION     V	  CREATE FUNCTION extensions.coach_match_event_trigger_function() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    event_type TEXT := NEW.event;
    _club_name TEXT := NEW.club_name;
    _coach_id int := NEW.coach_id;
    current_matchweek INT;
    red_card_count INT;
    participating_coach_count INT;
	_in_club varchar;
BEGIN
	
	Select club_name into _in_club
	from _flms.player_team
	where club_name = new.club_name and player_id = new.player_id;
	
	if _in_club is null then
		raise exception 'Player is not in the club';
	end if;
	
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
$$;
 ?   DROP FUNCTION extensions.coach_match_event_trigger_function();
    
   extensions          postgres    false    25                       0    0 -   FUNCTION coach_match_event_trigger_function()    ACL     �   REVOKE ALL ON FUNCTION extensions.coach_match_event_trigger_function() FROM postgres;
GRANT ALL ON FUNCTION extensions.coach_match_event_trigger_function() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    541                       0    0    FUNCTION crypt(text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.crypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.crypt(text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    467                       0    0    FUNCTION dearmor(text)    ACL     �   GRANT ALL ON FUNCTION extensions.dearmor(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.dearmor(text) TO dashboard_user;
       
   extensions          supabase_admin    false    497            	           0    0 $   FUNCTION decrypt(bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    471            
           0    0 .   FUNCTION decrypt_iv(bytea, bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.decrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    473                       1255    29596    delete_from_coach_team()    FUNCTION     �   CREATE FUNCTION extensions.delete_from_coach_team() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    DELETE FROM _flms.coach_team 
    WHERE coach_id = OLD.coach_id;
    RETURN OLD;
END;
$$;
 3   DROP FUNCTION extensions.delete_from_coach_team();
    
   extensions          postgres    false    25                       0    0 !   FUNCTION delete_from_coach_team()    ACL     �   REVOKE ALL ON FUNCTION extensions.delete_from_coach_team() FROM postgres;
GRANT ALL ON FUNCTION extensions.delete_from_coach_team() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    542                       0    0    FUNCTION digest(bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    464                       0    0    FUNCTION digest(text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.digest(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.digest(text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    463                       0    0 $   FUNCTION encrypt(bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    470                       0    0 .   FUNCTION encrypt_iv(bytea, bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.encrypt_iv(bytea, bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    472                       0    0 "   FUNCTION gen_random_bytes(integer)    ACL     �   GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_bytes(integer) TO dashboard_user;
       
   extensions          supabase_admin    false    474                       0    0    FUNCTION gen_random_uuid()    ACL     �   GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_random_uuid() TO dashboard_user;
       
   extensions          supabase_admin    false    475                       0    0    FUNCTION gen_salt(text)    ACL     �   GRANT ALL ON FUNCTION extensions.gen_salt(text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text) TO dashboard_user;
       
   extensions          supabase_admin    false    468                       0    0     FUNCTION gen_salt(text, integer)    ACL     �   GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.gen_salt(text, integer) TO dashboard_user;
       
   extensions          supabase_admin    false    469                       1255    29597    generate_matches()    FUNCTION     &  CREATE FUNCTION extensions.generate_matches() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    num_teams INTEGER;
    team RECORD;
    opponent RECORD;
    match_id TEXT;
    matchweek INTEGER;
    opponent_pos INTEGER; 
BEGIN
    SELECT COUNT(*) INTO num_teams FROM _flms.teams;

    FOR round IN 1..num_teams - 1 LOOP
        FOR i IN 1..num_teams / 2 LOOP
            SELECT * INTO team FROM _flms.teams ORDER BY club_name ASC OFFSET (i - 1) LIMIT 1;
            
            opponent_pos := (i + round - 1) % num_teams;
            IF opponent_pos = 0 THEN opponent_pos := num_teams; END IF;

            SELECT * INTO opponent FROM _flms.teams ORDER BY club_name ASC OFFSET (opponent_pos - 1) LIMIT 1;

            -- Avoid matches where a team plays against itself
            IF team.club_code != opponent.club_code THEN
                match_id := CONCAT(team.club_code, opponent.club_code);
                matchweek := round; 

                INSERT INTO _flms.matches (match_id, matchweek)
                VALUES (match_id, matchweek);

                INSERT INTO _flms.team_match (club_name, match_id, home_away)
                VALUES (team.club_name, match_id, 'home'),
                        (opponent.club_name, match_id, 'away');
            END IF;
        END LOOP;
    END LOOP;
END;
$$;
 -   DROP FUNCTION extensions.generate_matches();
    
   extensions          postgres    false    25                       0    0    FUNCTION generate_matches()    ACL     �   REVOKE ALL ON FUNCTION extensions.generate_matches() FROM postgres;
GRANT ALL ON FUNCTION extensions.generate_matches() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    543                        1255    29598    grant_pg_cron_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;
 1   DROP FUNCTION extensions.grant_pg_cron_access();
    
   extensions          postgres    false    25                       0    0    FUNCTION grant_pg_cron_access()    COMMENT     U   COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';
       
   extensions          postgres    false    544                       0    0    FUNCTION grant_pg_cron_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_cron_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_cron_access() TO dashboard_user;
       
   extensions          postgres    false    544            !           1255    29599    grant_pg_graphql_access()    FUNCTION     i	  CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;
 4   DROP FUNCTION extensions.grant_pg_graphql_access();
    
   extensions          supabase_admin    false    25                       0    0 "   FUNCTION grant_pg_graphql_access()    COMMENT     [   COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';
       
   extensions          supabase_admin    false    545                       0    0 "   FUNCTION grant_pg_graphql_access()    ACL     Z   GRANT ALL ON FUNCTION extensions.grant_pg_graphql_access() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    545            "           1255    29600    grant_pg_net_access()    FUNCTION     �  CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
    ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

    ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
    ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

    REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
    REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

    GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
  END IF;
END;
$$;
 0   DROP FUNCTION extensions.grant_pg_net_access();
    
   extensions          postgres    false    25                       0    0    FUNCTION grant_pg_net_access()    COMMENT     S   COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';
       
   extensions          postgres    false    546                       0    0    FUNCTION grant_pg_net_access()    ACL     �   REVOKE ALL ON FUNCTION extensions.grant_pg_net_access() FROM postgres;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.grant_pg_net_access() TO dashboard_user;
       
   extensions          postgres    false    546                       0    0 !   FUNCTION hmac(bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    466                       0    0    FUNCTION hmac(text, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.hmac(text, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    465            #           1255    29601    insert_into_coach_team()    FUNCTION     �   CREATE FUNCTION extensions.insert_into_coach_team() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    INSERT INTO _flms.coach_team (coach_id, club_name) 
    VALUES (NEW.coach_id, 'Default Team');
    RETURN NEW;
END;
$$;
 3   DROP FUNCTION extensions.insert_into_coach_team();
    
   extensions          postgres    false    25                       0    0 !   FUNCTION insert_into_coach_team()    ACL     �   REVOKE ALL ON FUNCTION extensions.insert_into_coach_team() FROM postgres;
GRANT ALL ON FUNCTION extensions.insert_into_coach_team() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    547            $           1255    29602 [   insert_player(character varying, character varying, character varying, date, integer, date) 	   PROCEDURE     �  CREATE PROCEDURE extensions.insert_player(IN player_name character varying, IN club_name character varying, IN pos character varying, IN date_of_birth date, IN shirt_number integer, IN begin_date date)
    LANGUAGE plpgsql
    AS $$
DECLARE
    player_id INTEGER;
    player_count INTEGER;
BEGIN
    -- Validate player limit
    SELECT COUNT(*) INTO player_count 
    FROM player_team 
    WHERE club_name = club_name;

    IF player_count >= 50 THEN
        RAISE EXCEPTION 'Club player limit reached (50 players). Cannot insert more players for %.', club_name;
    END IF;

    -- Insert player into players table
    INSERT INTO players (player_name, position, date_of_birth) 
    VALUES (player_name, pos, date_of_birth)
    RETURNING player_id INTO player_id;

    -- Insert player and club into player_team table
    INSERT INTO player_team (club_name, player_id, shirt_number, begin)  -- Added shirt_number and begin_date
    VALUES (club_name, player_id, shirt_number, begin_date);

    COMMIT; -- Commit the transaction
    
    EXCEPTION 
    WHEN unique_violation THEN -- Catches duplicate primary key error
        RAISE NOTICE 'A player with this shirt number already exists for this club.';
        ROLLBACK;  -- Undo any changes if there's an error
    WHEN others THEN           -- Catches other unexpected errors
        RAISE NOTICE 'An error occurred: %', SQLERRM;
        ROLLBACK;

END;
$$;
 �   DROP PROCEDURE extensions.insert_player(IN player_name character varying, IN club_name character varying, IN pos character varying, IN date_of_birth date, IN shirt_number integer, IN begin_date date);
    
   extensions          postgres    false    25                       0    0 �   PROCEDURE insert_player(IN player_name character varying, IN club_name character varying, IN pos character varying, IN date_of_birth date, IN shirt_number integer, IN begin_date date)    ACL     �  REVOKE ALL ON PROCEDURE extensions.insert_player(IN player_name character varying, IN club_name character varying, IN pos character varying, IN date_of_birth date, IN shirt_number integer, IN begin_date date) FROM postgres;
GRANT ALL ON PROCEDURE extensions.insert_player(IN player_name character varying, IN club_name character varying, IN pos character varying, IN date_of_birth date, IN shirt_number integer, IN begin_date date) TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    548                       0    0 U  FUNCTION pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision)    ACL       GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements(showtext boolean, OUT userid oid, OUT dbid oid, OUT toplevel boolean, OUT queryid bigint, OUT query text, OUT plans bigint, OUT total_plan_time double precision, OUT min_plan_time double precision, OUT max_plan_time double precision, OUT mean_plan_time double precision, OUT stddev_plan_time double precision, OUT calls bigint, OUT total_exec_time double precision, OUT min_exec_time double precision, OUT max_exec_time double precision, OUT mean_exec_time double precision, OUT stddev_exec_time double precision, OUT rows bigint, OUT shared_blks_hit bigint, OUT shared_blks_read bigint, OUT shared_blks_dirtied bigint, OUT shared_blks_written bigint, OUT local_blks_hit bigint, OUT local_blks_read bigint, OUT local_blks_dirtied bigint, OUT local_blks_written bigint, OUT temp_blks_read bigint, OUT temp_blks_written bigint, OUT blk_read_time double precision, OUT blk_write_time double precision, OUT temp_blk_read_time double precision, OUT temp_blk_write_time double precision, OUT wal_records bigint, OUT wal_fpi bigint, OUT wal_bytes numeric, OUT jit_functions bigint, OUT jit_generation_time double precision, OUT jit_inlining_count bigint, OUT jit_inlining_time double precision, OUT jit_optimization_count bigint, OUT jit_optimization_time double precision, OUT jit_emission_count bigint, OUT jit_emission_time double precision) TO dashboard_user;
       
   extensions          supabase_admin    false    462                        0    0 ^   FUNCTION pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone)    ACL        GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_info(OUT dealloc bigint, OUT stats_reset timestamp with time zone) TO dashboard_user;
       
   extensions          supabase_admin    false    461            !           0    0 G   FUNCTION pg_stat_statements_reset(userid oid, dbid oid, queryid bigint)    ACL     �   GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pg_stat_statements_reset(userid oid, dbid oid, queryid bigint) TO dashboard_user;
       
   extensions          supabase_admin    false    460            "           0    0 >   FUNCTION pgp_armor_headers(text, OUT key text, OUT value text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_armor_headers(text, OUT key text, OUT value text) TO dashboard_user;
       
   extensions          supabase_admin    false    498            #           0    0    FUNCTION pgp_key_id(bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_key_id(bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    494            $           0    0 &   FUNCTION pgp_pub_decrypt(bytea, bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    488            %           0    0 ,   FUNCTION pgp_pub_decrypt(bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    490            &           0    0 2   FUNCTION pgp_pub_decrypt(bytea, bytea, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt(bytea, bytea, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    492            '           0    0 ,   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    489            (           0    0 2   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    491            )           0    0 8   FUNCTION pgp_pub_decrypt_bytea(bytea, bytea, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_decrypt_bytea(bytea, bytea, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    493            *           0    0 %   FUNCTION pgp_pub_encrypt(text, bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    484            +           0    0 +   FUNCTION pgp_pub_encrypt(text, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt(text, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    486            ,           0    0 ,   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    485            -           0    0 2   FUNCTION pgp_pub_encrypt_bytea(bytea, bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_pub_encrypt_bytea(bytea, bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    487            .           0    0 %   FUNCTION pgp_sym_decrypt(bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    480            /           0    0 +   FUNCTION pgp_sym_decrypt(bytea, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt(bytea, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    482            0           0    0 +   FUNCTION pgp_sym_decrypt_bytea(bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    481            1           0    0 1   FUNCTION pgp_sym_decrypt_bytea(bytea, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_decrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    483            2           0    0 $   FUNCTION pgp_sym_encrypt(text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    476            3           0    0 *   FUNCTION pgp_sym_encrypt(text, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt(text, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    478            4           0    0 +   FUNCTION pgp_sym_encrypt_bytea(bytea, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text) TO dashboard_user;
       
   extensions          supabase_admin    false    477            5           0    0 1   FUNCTION pgp_sym_encrypt_bytea(bytea, text, text)    ACL     �   GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.pgp_sym_encrypt_bytea(bytea, text, text) TO dashboard_user;
       
   extensions          supabase_admin    false    479            %           1255    29603    pgrst_ddl_watch()    FUNCTION     >  CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 ,   DROP FUNCTION extensions.pgrst_ddl_watch();
    
   extensions          supabase_admin    false    25            6           0    0    FUNCTION pgrst_ddl_watch()    ACL     R   GRANT ALL ON FUNCTION extensions.pgrst_ddl_watch() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    549            &           1255    29604    pgrst_drop_watch()    FUNCTION       CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;
 -   DROP FUNCTION extensions.pgrst_drop_watch();
    
   extensions          supabase_admin    false    25            7           0    0    FUNCTION pgrst_drop_watch()    ACL     S   GRANT ALL ON FUNCTION extensions.pgrst_drop_watch() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    550            '           1255    29605 #   player_match_delete_event_trigger()    FUNCTION       CREATE FUNCTION extensions.player_match_delete_event_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    _is_home VARCHAR;
    _goal_home BIGINT;
    _goal_away BIGINT;
BEGIN
    --  Check if deleted event was a goal
    IF OLD.event = 'goal' THEN 
        select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = _match_id and club_name = _in_club;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = _match_id and club_name != _in_club;
		
		_goal_home := _goal_home - 1;
		if _is_home = 'home' then
			call _flms.update_match_results(_match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(_match_id, _goal_away, _goal_home);
		end if;
    END IF;

    RETURN OLD; 
END;
$$;
 >   DROP FUNCTION extensions.player_match_delete_event_trigger();
    
   extensions          postgres    false    25            8           0    0 ,   FUNCTION player_match_delete_event_trigger()    ACL     �   REVOKE ALL ON FUNCTION extensions.player_match_delete_event_trigger() FROM postgres;
GRANT ALL ON FUNCTION extensions.player_match_delete_event_trigger() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    551            (           1255    29606 %   player_match_event_trigger_function()    FUNCTION     �  CREATE FUNCTION extensions.player_match_event_trigger_function() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    player_count INT;
    in_match_event TEXT;
    in_match_time INT;
    in_match_half INT;
    current_matchweek INT;
    _goal_home BIGINT;
    _goal_away BIGINT;
	_is_home varchar;
	_in_club varchar;
BEGIN
	
	Select club_name into _in_club
	from _flms.player_team
	where club_name = new.club_name and player_id = new.player_id;
	
	if _in_club is null then
		raise exception 'Player is not in the club';
	end if;
	
    -- 1. Validate event type
    IF NEW.event NOT IN ('start', 'sub', 'in', 'out', 'red_card', 'yellow_card', 'goal') THEN
        RAISE EXCEPTION 'Invalid event type: %. Allowed values are start, sub, in, out, red_card, yellow_card, goal.', NEW.event;
    END IF;

    -- 2. Validate player limit for 'start' and 'sub' events
    IF NEW.event IN ('start', 'sub') THEN
        SELECT COUNT(*) INTO player_count
        FROM _flms.player_match
        WHERE match_id = NEW.match_id
        AND club_name = NEW.club_name
        AND event = NEW.event;

        IF NEW.event = 'start' AND player_count >= 11 THEN
            RAISE EXCEPTION 'Start player limit for match reached';
        ELSIF NEW.event = 'sub' AND player_count >= 9 THEN
            RAISE EXCEPTION 'Sub player limit for match reached';
        END IF;
    END IF; 

    -- 3. 'in' Event: Ensure player was previously 'sub'bed
    IF NEW.event = 'in' THEN
        IF NOT EXISTS (
            SELECT 1 FROM _flms.player_match 
            WHERE player_id = NEW.player_id 
            AND match_id = NEW.match_id 
            AND event = 'sub'
        ) THEN
            RAISE EXCEPTION 'Player % is not in the sub lineup', NEW.player_id;
        END IF;
        RAISE NOTICE 'Remember to submit the OUT player';
    END IF;

    -- 4. 'out' Event: Remind to submit 'in' player
    IF NEW.event = 'out' THEN
        RAISE NOTICE 'Remember to submit the IN player';
    END IF;

    -- 5. Check if player is on the field (for non-'in' events)
    IF NEW.event != 'in' THEN
        SELECT event, event_time, event_half
        INTO in_match_event, in_match_time, in_match_half
        FROM _flms.player_match
        WHERE player_id = NEW.player_id 
        AND match_id = NEW.match_id 
        AND event IN ('start', 'in');

        IF in_match_event IS NULL OR 
           (in_match_event = 'in' AND 
            (in_match_half > NEW.event_half OR 
             (in_match_half = NEW.event_half AND in_match_time > NEW.event_time))
           ) THEN
            RAISE EXCEPTION 'Player % not on the field yet', NEW.player_id;
        END IF;
    END IF;

    -- 6. Red Card Handling
    IF NEW.event = 'red_card' THEN
        SELECT matchweek INTO current_matchweek
        FROM _flms.matches 
        WHERE match_id = NEW.match_id;

        DELETE FROM _flms.player_match p
    	USING _flms.matches m
   		WHERE m.match_id = p.match_id 
      	AND m.matchweek > current_matchweek  -- Future matchweeks
      	AND m.matchweek <= current_matchweek + 3 -- 3 weeks ahead
      	AND p.player_id = NEW.player_id 
      	AND p.event IN ('start', 'sub'); -- Only delete start/sub events

        RAISE NOTICE 'Player % will be banned from GW % to GW %', NEW.player_id, current_matchweek + 1, current_matchweek + 3;
    END IF;

    -- 7. Goal Handling 
    IF NEW.event = 'goal' THEN
       -- Determine if the club scoring the goal is the home or away team
		select goal_scored, home_away into _goal_home, _is_home
		from _flms.team_match
		where match_id = NEW.match_id and club_name = NEW.club_name;

		select goal_scored into _goal_away
		from _flms.team_match
		where match_id = NEW.match_id and club_name != NEW.club_name;
		
		_goal_home:= _goal_home + 1;
		if _is_home = 'home' then
			call _flms.update_match_results(new.match_id, _goal_home, _goal_away);
		else
			call _flms.update_match_results(new.match_id, _goal_away, _goal_home);
		end if; 
    END IF;

    RETURN NEW; 
END;
$$;
 @   DROP FUNCTION extensions.player_match_event_trigger_function();
    
   extensions          postgres    false    25            9           0    0 .   FUNCTION player_match_event_trigger_function()    ACL     �   REVOKE ALL ON FUNCTION extensions.player_match_event_trigger_function() FROM postgres;
GRANT ALL ON FUNCTION extensions.player_match_event_trigger_function() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    552            )           1255    29607    set_graphql_placeholder()    FUNCTION     r  CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;
 4   DROP FUNCTION extensions.set_graphql_placeholder();
    
   extensions          supabase_admin    false    25            :           0    0 "   FUNCTION set_graphql_placeholder()    COMMENT     |   COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';
       
   extensions          supabase_admin    false    553            ;           0    0 "   FUNCTION set_graphql_placeholder()    ACL     Z   GRANT ALL ON FUNCTION extensions.set_graphql_placeholder() TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    553            <           0    0 8   FUNCTION sign(payload json, secret text, algorithm text)    ACL     �   GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.sign(payload json, secret text, algorithm text) TO dashboard_user;
       
   extensions          supabase_admin    false    502            =           0    0 "   FUNCTION try_cast_double(inp text)    ACL     �   GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.try_cast_double(inp text) TO dashboard_user;
       
   extensions          supabase_admin    false    504            *           1255    29608    update_coach_team()    FUNCTION     �   CREATE FUNCTION extensions.update_coach_team() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    UPDATE _flms.coach_team
    SET club_name = 'Wolverhampton Wanderers'
    WHERE coach_id = NEW.coach_id;
    RETURN NEW;
END;
$$;
 .   DROP FUNCTION extensions.update_coach_team();
    
   extensions          postgres    false    25            >           0    0    FUNCTION update_coach_team()    ACL     �   REVOKE ALL ON FUNCTION extensions.update_coach_team() FROM postgres;
GRANT ALL ON FUNCTION extensions.update_coach_team() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    554            +           1255    29609    update_coaches_and_teams()    FUNCTION     �  CREATE FUNCTION extensions.update_coaches_and_teams() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;
 5   DROP FUNCTION extensions.update_coaches_and_teams();
    
   extensions          postgres    false    25            ?           0    0 #   FUNCTION update_coaches_and_teams()    ACL     �   REVOKE ALL ON FUNCTION extensions.update_coaches_and_teams() FROM postgres;
GRANT ALL ON FUNCTION extensions.update_coaches_and_teams() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    555            ,           1255    29610 9   update_match_results(character varying, integer, integer)    FUNCTION     P  CREATE FUNCTION extensions.update_match_results(_match_id character varying, _goal_scored_home integer, _goal_scored_away integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    _home_team varchar;
    _away_team varchar;
BEGIN
    -- Determine home and away teams
    SELECT club_name INTO _home_team
    FROM _flms.team_match
    WHERE match_id = _match_id AND home_away = 'home';

    SELECT club_name INTO _away_team
    FROM _flms.team_match
    WHERE match_id = _match_id AND home_away = 'away';

    -- Update the goal_scored for both teams
    UPDATE _flms.team_match
    SET goal_scored = _goal_scored_home
    WHERE match_id = _match_id AND home_away = 'home';

    UPDATE _flms.team_match
    SET goal_scored = _goal_scored_away
    WHERE match_id = _match_id AND home_away = 'away';

    -- Update points based on the match outcome
    IF _goal_scored_home > _goal_scored_away THEN
        UPDATE _flms.teams SET point = point + 3, won = won + 1 WHERE club_name = _home_team;
        UPDATE _flms.teams SET point = point, lost = lost + 1 WHERE club_name = _away_team;
    ELSIF _goal_scored_home < _goal_scored_away THEN
        UPDATE _flms.teams SET point = point + 3, won = won + 1 WHERE club_name = _away_team;
        UPDATE _flms.teams SET point = point, lost = lost + 1 WHERE club_name = _home_team;
    ELSE
        UPDATE _flms.teams SET point = point + 1,drawn = drawn + 1 WHERE club_name IN (_home_team, _away_team);
    END IF;

    -- Recalculate positions using a CTE for ranking
    WITH ranked_teams AS (
        SELECT club_name,
               point,
               goal_difference,
               RANK() OVER (ORDER BY point DESC, goal_difference DESC) AS new_position
        FROM _flms.teams
    )
    UPDATE _flms.teams t
    SET position = rt.new_position
    FROM ranked_teams rt
    WHERE t.club_name = rt.club_name;
END;
$$;
 �   DROP FUNCTION extensions.update_match_results(_match_id character varying, _goal_scored_home integer, _goal_scored_away integer);
    
   extensions          postgres    false    25            @           0    0 p   FUNCTION update_match_results(_match_id character varying, _goal_scored_home integer, _goal_scored_away integer)    ACL     A  REVOKE ALL ON FUNCTION extensions.update_match_results(_match_id character varying, _goal_scored_home integer, _goal_scored_away integer) FROM postgres;
GRANT ALL ON FUNCTION extensions.update_match_results(_match_id character varying, _goal_scored_home integer, _goal_scored_away integer) TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    556            A           0    0    FUNCTION url_decode(data text)    ACL     �   GRANT ALL ON FUNCTION extensions.url_decode(data text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_decode(data text) TO dashboard_user;
       
   extensions          supabase_admin    false    500            B           0    0    FUNCTION url_encode(data bytea)    ACL     �   GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.url_encode(data bytea) TO dashboard_user;
       
   extensions          supabase_admin    false    499            C           0    0    FUNCTION uuid_generate_v1()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1() TO dashboard_user;
       
   extensions          supabase_admin    false    513            D           0    0    FUNCTION uuid_generate_v1mc()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v1mc() TO dashboard_user;
       
   extensions          supabase_admin    false    514            E           0    0 4   FUNCTION uuid_generate_v3(namespace uuid, name text)    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v3(namespace uuid, name text) TO dashboard_user;
       
   extensions          supabase_admin    false    515            F           0    0    FUNCTION uuid_generate_v4()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v4() TO dashboard_user;
       
   extensions          supabase_admin    false    516            G           0    0 4   FUNCTION uuid_generate_v5(namespace uuid, name text)    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_generate_v5(namespace uuid, name text) TO dashboard_user;
       
   extensions          supabase_admin    false    517            H           0    0    FUNCTION uuid_nil()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_nil() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_nil() TO dashboard_user;
       
   extensions          supabase_admin    false    508            I           0    0    FUNCTION uuid_ns_dns()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_dns() TO dashboard_user;
       
   extensions          supabase_admin    false    509            J           0    0    FUNCTION uuid_ns_oid()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_oid() TO dashboard_user;
       
   extensions          supabase_admin    false    511            K           0    0    FUNCTION uuid_ns_url()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_url() TO dashboard_user;
       
   extensions          supabase_admin    false    510            L           0    0    FUNCTION uuid_ns_x500()    ACL     �   GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.uuid_ns_x500() TO dashboard_user;
       
   extensions          supabase_admin    false    512            -           1255    29611    validate_coach_limit()    FUNCTION     �  CREATE FUNCTION extensions.validate_coach_limit() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  coach_count INT;
BEGIN
  SELECT COUNT(*) INTO coach_count 
  FROM _flms.coach_team
  WHERE club_name = NEW.club_name;  

  IF coach_count >= 15 THEN
    RAISE EXCEPTION 'Club coach limit reached (15 coaches). Cannot insert more coaches for %.', NEW.club_name; 
  END IF;

  RETURN NEW;
END;
$$;
 1   DROP FUNCTION extensions.validate_coach_limit();
    
   extensions          postgres    false    25            M           0    0    FUNCTION validate_coach_limit()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_coach_limit() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_coach_limit() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    557            .           1255    29612    validate_coach_match_event()    FUNCTION     k  CREATE FUNCTION extensions.validate_coach_match_event() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
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
$$;
 7   DROP FUNCTION extensions.validate_coach_match_event();
    
   extensions          postgres    false    25            N           0    0 %   FUNCTION validate_coach_match_event()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_coach_match_event() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_coach_match_event() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    558            /           1255    29613    validate_contract_overlap()    FUNCTION       CREATE FUNCTION extensions.validate_contract_overlap() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  overlap_count INT;
BEGIN
  -- Check for contract overlap
  SELECT COUNT(*) INTO overlap_count
  FROM _flms.coach_team
  WHERE coach_id = NEW.coach_id 
    AND ("begin", "end") OVERLAPS (NEW."begin", NEW."end");

  IF overlap_count > 0 THEN
    RAISE EXCEPTION 'Contract already exists for player % on this period.', NEW.coach_id;
  END IF;

  RETURN NEW;  -- Allow the insert if there's no overlap
END;
$$;
 6   DROP FUNCTION extensions.validate_contract_overlap();
    
   extensions          postgres    false    25            O           0    0 $   FUNCTION validate_contract_overlap()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_contract_overlap() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_contract_overlap() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    559            0           1255    29614    validate_event_type()    FUNCTION     b  CREATE FUNCTION extensions.validate_event_type() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF NEW.event NOT IN ('start', 'sub', 'in', 'out', 'red_card', 'yellow_card', 'goal') THEN
    RAISE EXCEPTION 'Invalid event type: %. Allowed values are start, sub, in, out, red_card, yellow_card, goal.', NEW.event;
  END IF;

  RETURN NEW;
END;
$$;
 0   DROP FUNCTION extensions.validate_event_type();
    
   extensions          postgres    false    25            P           0    0    FUNCTION validate_event_type()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_event_type() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_event_type() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    560            1           1255    29615    validate_match_player_limit()    FUNCTION     �  CREATE FUNCTION extensions.validate_match_player_limit() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  player_count INT;
BEGIN
  IF NEW.event IN ('start', 'sub') THEN  -- Check if event is 'start' or 'sub'
    SELECT COUNT(*) INTO player_count
    FROM _flms.player_match
    WHERE match_id = NEW.match_id
      AND club_name = NEW.club_name
      AND event = NEW.event;

    IF NEW.event = 'start' AND player_count >= 11 THEN
      RAISE EXCEPTION 'Start player limit for match reached';
    ELSIF NEW.event = 'sub' AND player_count >= 9 THEN
      RAISE EXCEPTION 'Sub player limit for match reached';
    END IF;
  END IF; 

  RETURN NEW;
END;
$$;
 8   DROP FUNCTION extensions.validate_match_player_limit();
    
   extensions          postgres    false    25            Q           0    0 &   FUNCTION validate_match_player_limit()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_match_player_limit() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_match_player_limit() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    561            2           1255    29616    validate_player_limit()    FUNCTION     �  CREATE FUNCTION extensions.validate_player_limit() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  player_count INT;
BEGIN
  SELECT COUNT(*) INTO player_count 
  FROM _flms.player_team
  WHERE club_name = NEW.club_name;

  IF player_count >= 50 THEN
    RAISE EXCEPTION 'Club player limit reached (50 players). Cannot insert more players for %.', NEW.club_name;
  END IF;

  RETURN NEW;
END;
$$;
 2   DROP FUNCTION extensions.validate_player_limit();
    
   extensions          postgres    false    25            R           0    0     FUNCTION validate_player_limit()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_player_limit() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_player_limit() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    562            3           1255    29617    validate_team_limit()    FUNCTION     3  CREATE FUNCTION extensions.validate_team_limit() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  team_count INT;
BEGIN
  SELECT COUNT(*) INTO team_count FROM _flms.teams;
  IF team_count >= 20 THEN
    RAISE EXCEPTION 'Club limit reached (20). Cannot insert more';
  END IF;
  RETURN NEW;
END;
$$;
 0   DROP FUNCTION extensions.validate_team_limit();
    
   extensions          postgres    false    25            S           0    0    FUNCTION validate_team_limit()    ACL     �   REVOKE ALL ON FUNCTION extensions.validate_team_limit() FROM postgres;
GRANT ALL ON FUNCTION extensions.validate_team_limit() TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    563            T           0    0 8   FUNCTION verify(token text, secret text, algorithm text)    ACL     �   GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO postgres WITH GRANT OPTION;
GRANT ALL ON FUNCTION extensions.verify(token text, secret text, algorithm text) TO dashboard_user;
       
   extensions          supabase_admin    false    503            U           0    0 )   FUNCTION comment_directive(comment_ text)    ACL     5  GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO postgres;
GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO anon;
GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO authenticated;
GRANT ALL ON FUNCTION graphql.comment_directive(comment_ text) TO service_role;
          graphql          supabase_admin    false    589            V           0    0     FUNCTION exception(message text)    ACL       GRANT ALL ON FUNCTION graphql.exception(message text) TO postgres;
GRANT ALL ON FUNCTION graphql.exception(message text) TO anon;
GRANT ALL ON FUNCTION graphql.exception(message text) TO authenticated;
GRANT ALL ON FUNCTION graphql.exception(message text) TO service_role;
          graphql          supabase_admin    false    588            W           0    0    FUNCTION get_schema_version()    ACL       GRANT ALL ON FUNCTION graphql.get_schema_version() TO postgres;
GRANT ALL ON FUNCTION graphql.get_schema_version() TO anon;
GRANT ALL ON FUNCTION graphql.get_schema_version() TO authenticated;
GRANT ALL ON FUNCTION graphql.get_schema_version() TO service_role;
          graphql          supabase_admin    false    591            X           0    0 #   FUNCTION increment_schema_version()    ACL       GRANT ALL ON FUNCTION graphql.increment_schema_version() TO postgres;
GRANT ALL ON FUNCTION graphql.increment_schema_version() TO anon;
GRANT ALL ON FUNCTION graphql.increment_schema_version() TO authenticated;
GRANT ALL ON FUNCTION graphql.increment_schema_version() TO service_role;
          graphql          supabase_admin    false    590            Y           0    0 U   FUNCTION graphql("operationName" text, query text, variables jsonb, extensions jsonb)    ACL       GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO postgres;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO anon;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO authenticated;
GRANT ALL ON FUNCTION graphql_public.graphql("operationName" text, query text, variables jsonb, extensions jsonb) TO service_role;
          graphql_public          supabase_admin    false    587            Z           0    0    FUNCTION lo_export(oid, text)    ACL     �   REVOKE ALL ON FUNCTION pg_catalog.lo_export(oid, text) FROM postgres;
GRANT ALL ON FUNCTION pg_catalog.lo_export(oid, text) TO supabase_admin;
       
   pg_catalog          supabase_admin    false    312            [           0    0    FUNCTION lo_import(text)    ACL     �   REVOKE ALL ON FUNCTION pg_catalog.lo_import(text) FROM postgres;
GRANT ALL ON FUNCTION pg_catalog.lo_import(text) TO supabase_admin;
       
   pg_catalog          supabase_admin    false    311            \           0    0    FUNCTION lo_import(text, oid)    ACL     �   REVOKE ALL ON FUNCTION pg_catalog.lo_import(text, oid) FROM postgres;
GRANT ALL ON FUNCTION pg_catalog.lo_import(text, oid) TO supabase_admin;
       
   pg_catalog          supabase_admin    false    313            4           1255    29618    get_auth(text)    FUNCTION     J  CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    RAISE WARNING 'PgBouncer auth request: %', p_usename;

    RETURN QUERY
    SELECT usename::TEXT, passwd::TEXT FROM pg_catalog.pg_shadow
    WHERE usename = p_usename;
END;
$$;
 2   DROP FUNCTION pgbouncer.get_auth(p_usename text);
    	   pgbouncer          postgres    false    15            ]           0    0 !   FUNCTION get_auth(p_usename text)    ACL     �   REVOKE ALL ON FUNCTION pgbouncer.get_auth(p_usename text) FROM PUBLIC;
GRANT ALL ON FUNCTION pgbouncer.get_auth(p_usename text) TO pgbouncer;
       	   pgbouncer          postgres    false    564            ^           0    0 ]   FUNCTION crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_decrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium          pgsodium_keymaker    false    427            _           0    0 ]   FUNCTION crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea)    ACL     �   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_encrypt(message bytea, additional bytea, key_uuid uuid, nonce bytea) TO service_role;
          pgsodium          pgsodium_keymaker    false    426            `           0    0 !   FUNCTION crypto_aead_det_keygen()    ACL     I   GRANT ALL ON FUNCTION pgsodium.crypto_aead_det_keygen() TO service_role;
          pgsodium          supabase_admin    false    409            R           1255    32194    validate_contract_overlap()    FUNCTION       CREATE FUNCTION public.validate_contract_overlap() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Kiểm tra sự trùng lặp hợp đồng tại đây
    -- Ví dụ: nếu dữ liệu đang chèn hoặc cập nhật trùng lặp với dữ liệu hiện có

    -- Giả sử bạn có một bảng chứa hợp đồng, và bạn muốn kiểm tra chồng lấp:
    IF EXISTS (
        SELECT 1
        FROM _flms.player_team
        WHERE player_id = NEW.player_id
          AND (NEW.begin_date, NEW.end_date) OVERLAPS (begin_date, end_date)
    ) THEN
        RAISE EXCEPTION 'Contract overlap detected for player_id %', NEW.player_id;
    END IF;

    -- Trả về NEW để cho phép hành động INSERT hoặc UPDATE tiếp tục
    RETURN NEW;
END;
$$;
 2   DROP FUNCTION public.validate_contract_overlap();
       public          postgres    false            5           1255    29619    apply_rls(jsonb, integer)    FUNCTION     f(  CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_;

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or action = 'DELETE'
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;
 G   DROP FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer);
       realtime          supabase_admin    false    14    1288            a           0    0 7   FUNCTION apply_rls(wal jsonb, max_record_bytes integer)    ACL     <  GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer) TO supabase_realtime_admin;
          realtime          supabase_admin    false    565            6           1255    29621 C   build_prepared_statement_sql(text, regclass, realtime.wal_column[])    FUNCTION     �  CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;
 �   DROP FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
       realtime          supabase_admin    false    14    1285            b           0    0 s   FUNCTION build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[])    ACL     �  GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO postgres;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO anon;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO service_role;
GRANT ALL ON FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) TO supabase_realtime_admin;
          realtime          supabase_admin    false    566            7           1255    29622    cast(text, regtype)    FUNCTION       CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;
 8   DROP FUNCTION realtime."cast"(val text, type_ regtype);
       realtime          supabase_admin    false    14            c           0    0 (   FUNCTION "cast"(val text, type_ regtype)    ACL     �  GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO postgres;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO dashboard_user;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO anon;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO authenticated;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO service_role;
GRANT ALL ON FUNCTION realtime."cast"(val text, type_ regtype) TO supabase_realtime_admin;
          realtime          supabase_admin    false    567            8           1255    29623 <   check_equality_op(realtime.equality_op, regtype, text, text)    FUNCTION     U  CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;
 j   DROP FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
       realtime          supabase_admin    false    14    1279            d           0    0 Z   FUNCTION check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text)    ACL       GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO postgres;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO anon;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO authenticated;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO service_role;
GRANT ALL ON FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) TO supabase_realtime_admin;
          realtime          supabase_admin    false    568            9           1255    29624 Q   is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[])    FUNCTION     �  CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;
 z   DROP FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
       realtime          supabase_admin    false    14    1285    1282            e           0    0 j   FUNCTION is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[])    ACL     n  GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO postgres;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO anon;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO authenticated;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO service_role;
GRANT ALL ON FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) TO supabase_realtime_admin;
          realtime          supabase_admin    false    569            :           1255    29625 *   list_changes(name, name, integer, integer)    FUNCTION     �  CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;
 v   DROP FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
       realtime          supabase_admin    false    14    1288            f           0    0 f   FUNCTION list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer)    ACL     V  GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO postgres;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO anon;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO authenticated;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO service_role;
GRANT ALL ON FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) TO supabase_realtime_admin;
          realtime          supabase_admin    false    570            ;           1255    29626    quote_wal2json(regclass)    FUNCTION     �  CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;
 8   DROP FUNCTION realtime.quote_wal2json(entity regclass);
       realtime          supabase_admin    false    14            g           0    0 (   FUNCTION quote_wal2json(entity regclass)    ACL     �  GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO postgres;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO anon;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO authenticated;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO service_role;
GRANT ALL ON FUNCTION realtime.quote_wal2json(entity regclass) TO supabase_realtime_admin;
          realtime          supabase_admin    false    571            <           1255    29627    subscription_check_filters()    FUNCTION     <
  CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;
 5   DROP FUNCTION realtime.subscription_check_filters();
       realtime          supabase_admin    false    14            h           0    0 %   FUNCTION subscription_check_filters()    ACL     �  GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO postgres;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO dashboard_user;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO anon;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO authenticated;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO service_role;
GRANT ALL ON FUNCTION realtime.subscription_check_filters() TO supabase_realtime_admin;
          realtime          supabase_admin    false    572            =           1255    29628    to_regrole(text)    FUNCTION     �   CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;
 3   DROP FUNCTION realtime.to_regrole(role_name text);
       realtime          supabase_admin    false    14            i           0    0 #   FUNCTION to_regrole(role_name text)    ACL     �  GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO postgres;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO dashboard_user;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO anon;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO authenticated;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO service_role;
GRANT ALL ON FUNCTION realtime.to_regrole(role_name text) TO supabase_realtime_admin;
          realtime          supabase_admin    false    573            >           1255    29629    topic()    FUNCTION     �   CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;
     DROP FUNCTION realtime.topic();
       realtime          supabase_realtime_admin    false    14            j           0    0    FUNCTION topic()    ACL     n   GRANT ALL ON FUNCTION realtime.topic() TO postgres;
GRANT ALL ON FUNCTION realtime.topic() TO dashboard_user;
          realtime          supabase_realtime_admin    false    574            ?           1255    29630 *   can_insert_object(text, text, uuid, jsonb)    FUNCTION     �  CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;
 _   DROP FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
       storage          supabase_storage_admin    false    26            k           0    0 P   FUNCTION can_insert_object(bucketid text, name text, owner uuid, metadata jsonb)    ACL     s   GRANT ALL ON FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) TO postgres;
          storage          supabase_storage_admin    false    575            @           1255    29631    extension(text)    FUNCTION     Z  CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
_filename text;
BEGIN
	select string_to_array(name, '/') into _parts;
	select _parts[array_length(_parts,1)] into _filename;
	-- @todo return the last part instead of 2
	return reverse(split_part(reverse(_filename), '.', 1));
END
$$;
 ,   DROP FUNCTION storage.extension(name text);
       storage          supabase_storage_admin    false    26            l           0    0    FUNCTION extension(name text)    ACL     @   GRANT ALL ON FUNCTION storage.extension(name text) TO postgres;
          storage          supabase_storage_admin    false    576            A           1255    29632    filename(text)    FUNCTION     �   CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;
 +   DROP FUNCTION storage.filename(name text);
       storage          supabase_storage_admin    false    26            m           0    0    FUNCTION filename(name text)    ACL     ?   GRANT ALL ON FUNCTION storage.filename(name text) TO postgres;
          storage          supabase_storage_admin    false    577            B           1255    29633    foldername(text)    FUNCTION     �   CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[1:array_length(_parts,1)-1];
END
$$;
 -   DROP FUNCTION storage.foldername(name text);
       storage          supabase_storage_admin    false    26            n           0    0    FUNCTION foldername(name text)    ACL     A   GRANT ALL ON FUNCTION storage.foldername(name text) TO postgres;
          storage          supabase_storage_admin    false    578            C           1255    29634    get_size_by_bucket()    FUNCTION        CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::int) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;
 ,   DROP FUNCTION storage.get_size_by_bucket();
       storage          supabase_storage_admin    false    26            o           0    0    FUNCTION get_size_by_bucket()    ACL     @   GRANT ALL ON FUNCTION storage.get_size_by_bucket() TO postgres;
          storage          supabase_storage_admin    false    579            D           1255    29635 L   list_multipart_uploads_with_delimiter(text, text, text, integer, text, text)    FUNCTION     9  CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;
 �   DROP FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
       storage          supabase_storage_admin    false    26            p           0    0 �   FUNCTION list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text)    ACL     �   GRANT ALL ON FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text) TO postgres;
          storage          supabase_storage_admin    false    580            E           1255    29636 B   list_objects_with_delimiter(text, text, text, integer, text, text)    FUNCTION     �  CREATE FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(name COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                        substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1)))
                    ELSE
                        name
                END AS name, id, metadata, updated_at
            FROM
                storage.objects
            WHERE
                bucket_id = $5 AND
                name ILIKE $1 || ''%'' AND
                CASE
                    WHEN $6 != '''' THEN
                    name COLLATE "C" > $6
                ELSE true END
                AND CASE
                    WHEN $4 != '''' THEN
                        CASE
                            WHEN position($2 IN substring(name from length($1) + 1)) > 0 THEN
                                substring(name from 1 for length($1) + position($2 IN substring(name from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                name COLLATE "C" > $4
                            END
                    ELSE
                        true
                END
            ORDER BY
                name COLLATE "C" ASC) as e order by name COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_token, bucket_id, start_after;
END;
$_$;
 �   DROP FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text);
       storage          supabase_storage_admin    false    26            q           0    0 �   FUNCTION list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text)    ACL     �   GRANT ALL ON FUNCTION storage.list_objects_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text) TO postgres;
          storage          supabase_storage_admin    false    581            F           1255    29637    operation()    FUNCTION     �   CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;
 #   DROP FUNCTION storage.operation();
       storage          supabase_storage_admin    false    26            r           0    0    FUNCTION operation()    ACL     7   GRANT ALL ON FUNCTION storage.operation() TO postgres;
          storage          supabase_storage_admin    false    582            G           1255    29638 ?   search(text, text, integer, integer, integer, text, text, text)    FUNCTION       CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
  v_order_by text;
  v_sort_order text;
begin
  case
    when sortcolumn = 'name' then
      v_order_by = 'name';
    when sortcolumn = 'updated_at' then
      v_order_by = 'updated_at';
    when sortcolumn = 'created_at' then
      v_order_by = 'created_at';
    when sortcolumn = 'last_accessed_at' then
      v_order_by = 'last_accessed_at';
    else
      v_order_by = 'name';
  end case;

  case
    when sortorder = 'asc' then
      v_sort_order = 'asc';
    when sortorder = 'desc' then
      v_sort_order = 'desc';
    else
      v_sort_order = 'asc';
  end case;

  v_order_by = v_order_by || ' ' || v_sort_order;

  return query execute
    'with folders as (
       select path_tokens[$1] as folder
       from storage.objects
         where objects.name ilike $2 || $3 || ''%''
           and bucket_id = $4
           and array_length(objects.path_tokens, 1) <> $1
       group by folder
       order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;
 �   DROP FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
       storage          supabase_storage_admin    false    26            s           0    0 �   FUNCTION search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text)    ACL     �   GRANT ALL ON FUNCTION storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text) TO postgres;
          storage          supabase_storage_admin    false    583            H           1255    29639    update_updated_at_column()    FUNCTION     �   CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;
 2   DROP FUNCTION storage.update_updated_at_column();
       storage          supabase_storage_admin    false    26            t           0    0 #   FUNCTION update_updated_at_column()    ACL     F   GRANT ALL ON FUNCTION storage.update_updated_at_column() TO postgres;
          storage          supabase_storage_admin    false    584            �           1255    29479    secrets_encrypt_secret_secret()    FUNCTION     (  CREATE FUNCTION vault.secrets_encrypt_secret_secret() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
		BEGIN
		        new.secret = CASE WHEN new.secret IS NULL THEN NULL ELSE
			CASE WHEN new.key_id IS NULL THEN NULL ELSE pg_catalog.encode(
			  pgsodium.crypto_aead_det_encrypt(
				pg_catalog.convert_to(new.secret, 'utf8'),
				pg_catalog.convert_to((new.id::text || new.description::text || new.created_at::text || new.updated_at::text)::text, 'utf8'),
				new.key_id::uuid,
				new.nonce
			  ),
				'base64') END END;
		RETURN new;
		END;
		$$;
 5   DROP FUNCTION vault.secrets_encrypt_secret_secret();
       vault          supabase_admin    false    18                        1259    29640    coach_match    TABLE     �   CREATE TABLE _flms.coach_match (
    coach_id bigint,
    club_name character varying,
    event character varying,
    match_id character varying,
    event_time numeric,
    event_half smallint
);
    DROP TABLE _flms.coach_match;
       _flms         heap    postgres    false    13                       1259    29645 
   coach_team    TABLE     �   CREATE TABLE _flms.coach_team (
    coach_id bigint NOT NULL,
    club_name character varying NOT NULL,
    begin date,
    "end" date,
    CONSTRAINT end_date_check CHECK ((begin < "end"))
);

ALTER TABLE ONLY _flms.coach_team REPLICA IDENTITY FULL;
    DROP TABLE _flms.coach_team;
       _flms         heap    postgres    false    13                       1259    29651    coaches    TABLE     �   CREATE TABLE _flms.coaches (
    coach_name character varying NOT NULL,
    nationality character varying,
    coach_id bigint NOT NULL,
    date_of_birth date
);
    DROP TABLE _flms.coaches;
       _flms         heap    postgres    false    13                       1259    29656    coaches_coach_id_seq    SEQUENCE     �   ALTER TABLE _flms.coaches ALTER COLUMN coach_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME _flms.coaches_coach_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            _flms          postgres    false    13    258                       1259    29657    matches    TABLE     �   CREATE TABLE _flms.matches (
    matchweek smallint,
    home_ticket numeric,
    away_ticket numeric,
    match_time timestamp without time zone,
    match_id character varying NOT NULL
);
    DROP TABLE _flms.matches;
       _flms         heap    postgres    false    13                       1259    29662    player_match    TABLE     �   CREATE TABLE _flms.player_match (
    player_id bigint,
    match_id character varying,
    club_name character varying,
    event character varying,
    event_time integer,
    event_half integer
);
    DROP TABLE _flms.player_match;
       _flms         heap    postgres    false    13                       1259    29667    player_team    TABLE     �   CREATE TABLE _flms.player_team (
    club_name character varying NOT NULL,
    begin date DEFAULT now(),
    "end" date,
    player_id bigint,
    shirt_number smallint
);

ALTER TABLE ONLY _flms.player_team REPLICA IDENTITY FULL;
    DROP TABLE _flms.player_team;
       _flms         heap    postgres    false    13                       1259    29673    players    TABLE     �   CREATE TABLE _flms.players (
    player_name character varying,
    player_id bigint NOT NULL,
    "position" character varying,
    date_of_birth date
);
    DROP TABLE _flms.players;
       _flms         heap    postgres    false    13                       1259    29678    players_player_id_seq    SEQUENCE     �   ALTER TABLE _flms.players ALTER COLUMN player_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME _flms.players_player_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            _flms          postgres    false    13    263            	           1259    29679 	   ref_match    TABLE     q   CREATE TABLE _flms.ref_match (
    match_id character varying NOT NULL,
    ref_id character varying NOT NULL
);
    DROP TABLE _flms.ref_match;
       _flms         heap    postgres    false    13            
           1259    29684    referees    TABLE     p   CREATE TABLE _flms.referees (
    ref_id character varying NOT NULL,
    ref_name character varying NOT NULL
);
    DROP TABLE _flms.referees;
       _flms         heap    postgres    false    13                       1259    29689    stadiums    TABLE     �   CREATE TABLE _flms.stadiums (
    stadium_name character varying NOT NULL,
    location character varying,
    capacity integer
);
    DROP TABLE _flms.stadiums;
       _flms         heap    postgres    false    13                       1259    29694 
   team_match    TABLE     �   CREATE TABLE _flms.team_match (
    club_name character varying NOT NULL,
    match_id character varying NOT NULL,
    home_away character varying,
    goal_scored integer
);
    DROP TABLE _flms.team_match;
       _flms         heap    postgres    false    13                       1259    29699    teams    TABLE     "  CREATE TABLE _flms.teams (
    club_name character varying NOT NULL,
    point integer,
    goal_difference integer,
    "position" integer,
    stadium_name character varying,
    club_code character varying,
    won smallint,
    drawn smallint,
    lost smallint,
    played smallint
);
    DROP TABLE _flms.teams;
       _flms         heap    postgres    false    13                       1259    29704 
   team_table    VIEW       CREATE VIEW _flms.team_table AS
 SELECT teams.club_name,
    teams.point,
    teams.goal_difference,
    teams."position",
    teams.stadium_name,
    teams.club_code,
    teams.won,
    teams.drawn,
    teams.lost,
    teams.played
   FROM _flms.teams
  ORDER BY teams."position";
    DROP VIEW _flms.team_table;
       _flms          postgres    false    269    269    269    269    269    269    269    269    269    269    13                       1259    29708    top_appearance    VIEW     �   CREATE VIEW _flms.top_appearance AS
SELECT
    NULL::bigint AS player_id,
    NULL::character varying AS player_name,
    NULL::character varying AS "position",
    NULL::character varying AS club_name,
    NULL::bigint AS apperance;
     DROP VIEW _flms.top_appearance;
       _flms          postgres    false    13                       1259    29712    top_clean_sheet    VIEW     �  CREATE VIEW _flms.top_clean_sheet AS
 WITH scoreboard AS (
         SELECT t1.match_id AS matchid,
            m.matchweek,
            t1.home_away,
            t1.club_name AS team1,
            t1.goal_scored AS goal1,
            t2.goal_scored AS goal2,
            t2.club_name AS team2
           FROM ((_flms.team_match t1
             LEFT JOIN _flms.team_match t2 ON (((t1.match_id)::text = (t2.match_id)::text)))
             LEFT JOIN _flms.matches m ON (((m.match_id)::text = (t1.match_id)::text)))
          WHERE (((t1.club_name)::text <> (t2.club_name)::text) AND (t1.goal_scored IS NOT NULL))
          ORDER BY t1.club_name
        )
 SELECT p.player_id,
    p.player_name,
    p."position",
    s.team1,
    count(*) AS count
   FROM (((_flms.player_match pm
     LEFT JOIN scoreboard s ON (((pm.match_id)::text = (s.matchid)::text)))
     LEFT JOIN _flms.players p ON ((p.player_id = pm.player_id)))
     LEFT JOIN _flms.player_team pt ON ((pt.player_id = p.player_id)))
  WHERE (((p."position")::text = 'Goalkeeper'::text) AND ((pm.event)::text = 'start'::text) AND (s.goal2 = 0) AND ((pt.club_name)::text = (s.team1)::text))
  GROUP BY p.player_id, p.player_name, p."position", s.team1
  ORDER BY (count(*)) DESC;
 !   DROP VIEW _flms.top_clean_sheet;
       _flms          postgres    false    261    261    263    263    263    262    261    268    268    268    268    262    260    260    13                       1259    29717    top_goal_scored_match    VIEW       CREATE VIEW _flms.top_goal_scored_match AS
 WITH total_goals AS (
         SELECT team_match.match_id,
            sum(team_match.goal_scored) AS total_goals
           FROM _flms.team_match
          GROUP BY team_match.match_id
        )
 SELECT m.match_id,
    m.club_name,
    m.home_away,
    m.goal_scored
   FROM (_flms.team_match m
     JOIN total_goals tg ON (((m.match_id)::text = (tg.match_id)::text)))
  WHERE (tg.total_goals = ( SELECT max(total_goals.total_goals) AS max
           FROM total_goals));
 '   DROP VIEW _flms.top_goal_scored_match;
       _flms          postgres    false    268    268    268    268    13                       1259    29722    top_goal_scorer    VIEW     �   CREATE VIEW _flms.top_goal_scorer AS
SELECT
    NULL::bigint AS player_id,
    NULL::character varying AS player_name,
    NULL::character varying AS "position",
    NULL::character varying AS club_name,
    NULL::bigint AS goal;
 !   DROP VIEW _flms.top_goal_scorer;
       _flms          postgres    false    13                       1259    29726    top_red_card    VIEW     �   CREATE VIEW _flms.top_red_card AS
SELECT
    NULL::bigint AS player_id,
    NULL::character varying AS player_name,
    NULL::character varying AS "position",
    NULL::character varying AS club_name,
    NULL::bigint AS red;
    DROP VIEW _flms.top_red_card;
       _flms          postgres    false    13                       1259    29730    audit_log_entries    TABLE     �   CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);
 #   DROP TABLE auth.audit_log_entries;
       auth         heap    supabase_auth_admin    false    27            u           0    0    TABLE audit_log_entries    COMMENT     R   COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';
          auth          supabase_auth_admin    false    276            v           0    0    TABLE audit_log_entries    ACL     �   GRANT ALL ON TABLE auth.audit_log_entries TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.audit_log_entries TO postgres;
GRANT SELECT ON TABLE auth.audit_log_entries TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    276                       1259    29736 
   flow_state    TABLE     �  CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text NOT NULL,
    code_challenge_method auth.code_challenge_method NOT NULL,
    code_challenge text NOT NULL,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone
);
    DROP TABLE auth.flow_state;
       auth         heap    supabase_auth_admin    false    1264    27            w           0    0    TABLE flow_state    COMMENT     G   COMMENT ON TABLE auth.flow_state IS 'stores metadata for pkce logins';
          auth          supabase_auth_admin    false    277            x           0    0    TABLE flow_state    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.flow_state TO postgres;
GRANT SELECT ON TABLE auth.flow_state TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.flow_state TO dashboard_user;
          auth          supabase_auth_admin    false    277                       1259    29741 
   identities    TABLE     �  CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);
    DROP TABLE auth.identities;
       auth         heap    supabase_auth_admin    false    27            y           0    0    TABLE identities    COMMENT     U   COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';
          auth          supabase_auth_admin    false    278            z           0    0    COLUMN identities.email    COMMENT     �   COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';
          auth          supabase_auth_admin    false    278            {           0    0    TABLE identities    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.identities TO postgres;
GRANT SELECT ON TABLE auth.identities TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.identities TO dashboard_user;
          auth          supabase_auth_admin    false    278                       1259    29748 	   instances    TABLE     �   CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE auth.instances;
       auth         heap    supabase_auth_admin    false    27            |           0    0    TABLE instances    COMMENT     Q   COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';
          auth          supabase_auth_admin    false    279            }           0    0    TABLE instances    ACL     �   GRANT ALL ON TABLE auth.instances TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.instances TO postgres;
GRANT SELECT ON TABLE auth.instances TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    279                       1259    29753    mfa_amr_claims    TABLE     �   CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);
     DROP TABLE auth.mfa_amr_claims;
       auth         heap    supabase_auth_admin    false    27            ~           0    0    TABLE mfa_amr_claims    COMMENT     ~   COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';
          auth          supabase_auth_admin    false    280                       0    0    TABLE mfa_amr_claims    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_amr_claims TO postgres;
GRANT SELECT ON TABLE auth.mfa_amr_claims TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_amr_claims TO dashboard_user;
          auth          supabase_auth_admin    false    280                       1259    29758    mfa_challenges    TABLE     �   CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text
);
     DROP TABLE auth.mfa_challenges;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE mfa_challenges    COMMENT     _   COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';
          auth          supabase_auth_admin    false    281            �           0    0    TABLE mfa_challenges    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_challenges TO postgres;
GRANT SELECT ON TABLE auth.mfa_challenges TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_challenges TO dashboard_user;
          auth          supabase_auth_admin    false    281                       1259    29763    mfa_factors    TABLE     t  CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone
);
    DROP TABLE auth.mfa_factors;
       auth         heap    supabase_auth_admin    false    27    1267    1270            �           0    0    TABLE mfa_factors    COMMENT     L   COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';
          auth          supabase_auth_admin    false    282            �           0    0    TABLE mfa_factors    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.mfa_factors TO postgres;
GRANT SELECT ON TABLE auth.mfa_factors TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.mfa_factors TO dashboard_user;
          auth          supabase_auth_admin    false    282                       1259    29768    one_time_tokens    TABLE     �  CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);
 !   DROP TABLE auth.one_time_tokens;
       auth         heap    supabase_auth_admin    false    27    1273            �           0    0    TABLE one_time_tokens    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.one_time_tokens TO postgres;
GRANT SELECT ON TABLE auth.one_time_tokens TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.one_time_tokens TO dashboard_user;
          auth          supabase_auth_admin    false    283                       1259    29776    refresh_tokens    TABLE     8  CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);
     DROP TABLE auth.refresh_tokens;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE refresh_tokens    COMMENT     n   COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';
          auth          supabase_auth_admin    false    284            �           0    0    TABLE refresh_tokens    ACL     �   GRANT ALL ON TABLE auth.refresh_tokens TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.refresh_tokens TO postgres;
GRANT SELECT ON TABLE auth.refresh_tokens TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    284                       1259    29781    refresh_tokens_id_seq    SEQUENCE     |   CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE auth.refresh_tokens_id_seq;
       auth          supabase_auth_admin    false    27    284            �           0    0    refresh_tokens_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;
          auth          supabase_auth_admin    false    285            �           0    0    SEQUENCE refresh_tokens_id_seq    ACL     �   GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO dashboard_user;
GRANT ALL ON SEQUENCE auth.refresh_tokens_id_seq TO postgres;
          auth          supabase_auth_admin    false    285                       1259    29782    saml_providers    TABLE     H  CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);
     DROP TABLE auth.saml_providers;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE saml_providers    COMMENT     ]   COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';
          auth          supabase_auth_admin    false    286            �           0    0    TABLE saml_providers    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_providers TO postgres;
GRANT SELECT ON TABLE auth.saml_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_providers TO dashboard_user;
          auth          supabase_auth_admin    false    286                       1259    29790    saml_relay_states    TABLE     `  CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);
 #   DROP TABLE auth.saml_relay_states;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE saml_relay_states    COMMENT     �   COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';
          auth          supabase_auth_admin    false    287            �           0    0    TABLE saml_relay_states    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.saml_relay_states TO postgres;
GRANT SELECT ON TABLE auth.saml_relay_states TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.saml_relay_states TO dashboard_user;
          auth          supabase_auth_admin    false    287                        1259    29796    schema_migrations    TABLE     U   CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);
 #   DROP TABLE auth.schema_migrations;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE schema_migrations    COMMENT     X   COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';
          auth          supabase_auth_admin    false    288            �           0    0    TABLE schema_migrations    ACL     �   GRANT ALL ON TABLE auth.schema_migrations TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.schema_migrations TO postgres;
GRANT SELECT ON TABLE auth.schema_migrations TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    288            !           1259    29799    sessions    TABLE     T  CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text
);
    DROP TABLE auth.sessions;
       auth         heap    supabase_auth_admin    false    27    1261            �           0    0    TABLE sessions    COMMENT     U   COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';
          auth          supabase_auth_admin    false    289            �           0    0    COLUMN sessions.not_after    COMMENT     �   COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';
          auth          supabase_auth_admin    false    289            �           0    0    TABLE sessions    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sessions TO postgres;
GRANT SELECT ON TABLE auth.sessions TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sessions TO dashboard_user;
          auth          supabase_auth_admin    false    289            "           1259    29804    sso_domains    TABLE       CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);
    DROP TABLE auth.sso_domains;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE sso_domains    COMMENT     t   COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';
          auth          supabase_auth_admin    false    290            �           0    0    TABLE sso_domains    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_domains TO postgres;
GRANT SELECT ON TABLE auth.sso_domains TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_domains TO dashboard_user;
          auth          supabase_auth_admin    false    290            #           1259    29810    sso_providers    TABLE       CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);
    DROP TABLE auth.sso_providers;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE sso_providers    COMMENT     x   COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';
          auth          supabase_auth_admin    false    291            �           0    0     COLUMN sso_providers.resource_id    COMMENT     �   COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';
          auth          supabase_auth_admin    false    291            �           0    0    TABLE sso_providers    ACL     �   GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.sso_providers TO postgres;
GRANT SELECT ON TABLE auth.sso_providers TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE auth.sso_providers TO dashboard_user;
          auth          supabase_auth_admin    false    291            $           1259    29816    users    TABLE     4  CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);
    DROP TABLE auth.users;
       auth         heap    supabase_auth_admin    false    27            �           0    0    TABLE users    COMMENT     W   COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';
          auth          supabase_auth_admin    false    292            �           0    0    COLUMN users.is_sso_user    COMMENT     �   COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';
          auth          supabase_auth_admin    false    292            �           0    0    TABLE users    ACL     �   GRANT ALL ON TABLE auth.users TO dashboard_user;
GRANT INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE auth.users TO postgres;
GRANT SELECT ON TABLE auth.users TO postgres WITH GRANT OPTION;
          auth          supabase_auth_admin    false    292            %           1259    29831    match_schedule    TABLE     e   CREATE TABLE extensions.match_schedule (
    team1 character varying,
    team2 character varying
);
 &   DROP TABLE extensions.match_schedule;
    
   extensions         heap    postgres    false    25            �           0    0    TABLE match_schedule    ACL     �   REVOKE ALL ON TABLE extensions.match_schedule FROM postgres;
GRANT ALL ON TABLE extensions.match_schedule TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    293            &           1259    29836    matches2    TABLE     �   CREATE TABLE extensions.matches2 (
    id integer NOT NULL,
    home_team_id integer,
    away_team_id integer,
    random_order double precision
);
     DROP TABLE extensions.matches2;
    
   extensions         heap    postgres    false    25            �           0    0    TABLE matches2    ACL     }   REVOKE ALL ON TABLE extensions.matches2 FROM postgres;
GRANT ALL ON TABLE extensions.matches2 TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    294            '           1259    29839    matches2_id_seq    SEQUENCE     �   CREATE SEQUENCE extensions.matches2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE extensions.matches2_id_seq;
    
   extensions          postgres    false    294    25            �           0    0    matches2_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE extensions.matches2_id_seq OWNED BY extensions.matches2.id;
       
   extensions          postgres    false    295            �           0    0    SEQUENCE matches2_id_seq    ACL     �   REVOKE ALL ON SEQUENCE extensions.matches2_id_seq FROM postgres;
GRANT ALL ON SEQUENCE extensions.matches2_id_seq TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    295            �           0    0    TABLE pg_stat_statements    ACL     �   GRANT ALL ON TABLE extensions.pg_stat_statements TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements TO dashboard_user;
       
   extensions          supabase_admin    false    250            �           0    0    TABLE pg_stat_statements_info    ACL     �   GRANT ALL ON TABLE extensions.pg_stat_statements_info TO postgres WITH GRANT OPTION;
GRANT ALL ON TABLE extensions.pg_stat_statements_info TO dashboard_user;
       
   extensions          supabase_admin    false    249            (           1259    29840    random_matches    VIEW     �   CREATE VIEW extensions.random_matches AS
 SELECT matches2.id,
    matches2.home_team_id,
    matches2.away_team_id,
    matches2.random_order
   FROM extensions.matches2
  ORDER BY matches2.random_order;
 %   DROP VIEW extensions.random_matches;
    
   extensions          postgres    false    294    294    294    294    25            �           0    0    TABLE random_matches    ACL     �   REVOKE ALL ON TABLE extensions.random_matches FROM postgres;
GRANT ALL ON TABLE extensions.random_matches TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    296            )           1259    29844    teams2    TABLE     ]   CREATE TABLE extensions.teams2 (
    id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE extensions.teams2;
    
   extensions         heap    postgres    false    25            �           0    0    TABLE teams2    ACL     y   REVOKE ALL ON TABLE extensions.teams2 FROM postgres;
GRANT ALL ON TABLE extensions.teams2 TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    297            *           1259    29847    teams2_id_seq    SEQUENCE     �   CREATE SEQUENCE extensions.teams2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE extensions.teams2_id_seq;
    
   extensions          postgres    false    297    25            �           0    0    teams2_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE extensions.teams2_id_seq OWNED BY extensions.teams2.id;
       
   extensions          postgres    false    298            �           0    0    SEQUENCE teams2_id_seq    ACL     �   REVOKE ALL ON SEQUENCE extensions.teams2_id_seq FROM postgres;
GRANT ALL ON SEQUENCE extensions.teams2_id_seq TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    298            +           1259    29848    top_clean_sheet_    VIEW     �  CREATE VIEW extensions.top_clean_sheet_ AS
 WITH scoreboard AS (
         SELECT t1.match_id AS matchid,
            m.matchweek,
            t1.home_away,
            t1.club_name AS team1,
            t1.goal_scored AS goal1,
            t2.goal_scored AS goal2,
            t2.club_name AS team2
           FROM ((_flms.team_match t1
             LEFT JOIN _flms.team_match t2 ON (((t1.match_id)::text = (t2.match_id)::text)))
             LEFT JOIN _flms.matches m ON (((m.match_id)::text = (t1.match_id)::text)))
          WHERE (((t1.club_name)::text <> (t2.club_name)::text) AND (t1.goal_scored IS NOT NULL))
          ORDER BY t1.club_name
        )
 SELECT p.player_id,
    p.player_name,
    p."position",
    s.team1,
    count(*) AS count
   FROM (((_flms.player_match pm
     LEFT JOIN scoreboard s ON (((pm.match_id)::text = (s.matchid)::text)))
     LEFT JOIN _flms.players p ON ((p.player_id = pm.player_id)))
     LEFT JOIN _flms.player_team pt ON ((pt.player_id = p.player_id)))
  WHERE (((p."position")::text = 'Goalkeeper'::text) AND ((pm.event)::text = 'start'::text) AND (s.goal2 = 0) AND ((pt.club_name)::text = (s.team1)::text))
  GROUP BY p.player_id, p.player_name, p."position", s.team1
  ORDER BY (count(*)) DESC;
 '   DROP VIEW extensions.top_clean_sheet_;
    
   extensions          postgres    false    262    263    263    263    260    268    268    268    268    260    261    261    261    262    25            �           0    0    TABLE top_clean_sheet_    ACL     �   REVOKE ALL ON TABLE extensions.top_clean_sheet_ FROM postgres;
GRANT ALL ON TABLE extensions.top_clean_sheet_ TO postgres WITH GRANT OPTION;
       
   extensions          postgres    false    299            �           0    0    SEQUENCE seq_schema_version    ACL     �   GRANT ALL ON SEQUENCE graphql.seq_schema_version TO postgres;
GRANT ALL ON SEQUENCE graphql.seq_schema_version TO anon;
GRANT ALL ON SEQUENCE graphql.seq_schema_version TO authenticated;
GRANT ALL ON SEQUENCE graphql.seq_schema_version TO service_role;
          graphql          supabase_admin    false    310            �           0    0    TABLE decrypted_key    ACL     A   GRANT ALL ON TABLE pgsodium.decrypted_key TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    248            �           0    0    TABLE masking_rule    ACL     @   GRANT ALL ON TABLE pgsodium.masking_rule TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    246            �           0    0    TABLE mask_columns    ACL     @   GRANT ALL ON TABLE pgsodium.mask_columns TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    247            ,           1259    29853    messages    TABLE     �   CREATE TABLE realtime.messages (
    id bigint NOT NULL,
    topic text NOT NULL,
    extension text NOT NULL,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);
    DROP TABLE realtime.messages;
       realtime         heap    supabase_realtime_admin    false    14            �           0    0    TABLE messages    ACL     8  GRANT ALL ON TABLE realtime.messages TO postgres;
GRANT ALL ON TABLE realtime.messages TO dashboard_user;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO anon;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO authenticated;
GRANT SELECT,INSERT,UPDATE ON TABLE realtime.messages TO service_role;
          realtime          supabase_realtime_admin    false    300            -           1259    29858    messages_id_seq    SEQUENCE     z   CREATE SEQUENCE realtime.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE realtime.messages_id_seq;
       realtime          supabase_realtime_admin    false    300    14            �           0    0    messages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE realtime.messages_id_seq OWNED BY realtime.messages.id;
          realtime          supabase_realtime_admin    false    301            �           0    0    SEQUENCE messages_id_seq    ACL     =  GRANT ALL ON SEQUENCE realtime.messages_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.messages_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.messages_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.messages_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.messages_id_seq TO service_role;
          realtime          supabase_realtime_admin    false    301            .           1259    29859    schema_migrations    TABLE     y   CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);
 '   DROP TABLE realtime.schema_migrations;
       realtime         heap    supabase_admin    false    14            �           0    0    TABLE schema_migrations    ACL     �  GRANT ALL ON TABLE realtime.schema_migrations TO postgres;
GRANT ALL ON TABLE realtime.schema_migrations TO dashboard_user;
GRANT SELECT ON TABLE realtime.schema_migrations TO anon;
GRANT SELECT ON TABLE realtime.schema_migrations TO authenticated;
GRANT SELECT ON TABLE realtime.schema_migrations TO service_role;
GRANT ALL ON TABLE realtime.schema_migrations TO supabase_realtime_admin;
          realtime          supabase_admin    false    302            /           1259    29862    subscription    TABLE     �  CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL
);
 "   DROP TABLE realtime.subscription;
       realtime         heap    supabase_admin    false    1282    573    1282    14            �           0    0    TABLE subscription    ACL     g  GRANT ALL ON TABLE realtime.subscription TO postgres;
GRANT ALL ON TABLE realtime.subscription TO dashboard_user;
GRANT SELECT ON TABLE realtime.subscription TO anon;
GRANT SELECT ON TABLE realtime.subscription TO authenticated;
GRANT SELECT ON TABLE realtime.subscription TO service_role;
GRANT ALL ON TABLE realtime.subscription TO supabase_realtime_admin;
          realtime          supabase_admin    false    303            0           1259    29870    subscription_id_seq    SEQUENCE     �   ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            realtime          supabase_admin    false    14    303            �           0    0    SEQUENCE subscription_id_seq    ACL     �  GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO postgres;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO dashboard_user;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO anon;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO authenticated;
GRANT USAGE ON SEQUENCE realtime.subscription_id_seq TO service_role;
GRANT ALL ON SEQUENCE realtime.subscription_id_seq TO supabase_realtime_admin;
          realtime          supabase_admin    false    304            1           1259    29871    buckets    TABLE     k  CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text
);
    DROP TABLE storage.buckets;
       storage         heap    supabase_storage_admin    false    26            �           0    0    COLUMN buckets.owner    COMMENT     X   COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';
          storage          supabase_storage_admin    false    305            �           0    0    TABLE buckets    ACL     �   GRANT ALL ON TABLE storage.buckets TO anon;
GRANT ALL ON TABLE storage.buckets TO authenticated;
GRANT ALL ON TABLE storage.buckets TO service_role;
GRANT ALL ON TABLE storage.buckets TO postgres;
          storage          supabase_storage_admin    false    305            2           1259    29880 
   migrations    TABLE     �   CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE storage.migrations;
       storage         heap    supabase_storage_admin    false    26            �           0    0    TABLE migrations    ACL     �   GRANT ALL ON TABLE storage.migrations TO anon;
GRANT ALL ON TABLE storage.migrations TO authenticated;
GRANT ALL ON TABLE storage.migrations TO service_role;
GRANT ALL ON TABLE storage.migrations TO postgres;
          storage          supabase_storage_admin    false    306            3           1259    29884    objects    TABLE     �  CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);
    DROP TABLE storage.objects;
       storage         heap    supabase_storage_admin    false    26            �           0    0    COLUMN objects.owner    COMMENT     X   COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';
          storage          supabase_storage_admin    false    307            �           0    0    TABLE objects    ACL     �   GRANT ALL ON TABLE storage.objects TO anon;
GRANT ALL ON TABLE storage.objects TO authenticated;
GRANT ALL ON TABLE storage.objects TO service_role;
GRANT ALL ON TABLE storage.objects TO postgres;
          storage          supabase_storage_admin    false    307            4           1259    29894    s3_multipart_uploads    TABLE     j  CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb
);
 )   DROP TABLE storage.s3_multipart_uploads;
       storage         heap    supabase_storage_admin    false    26            �           0    0    TABLE s3_multipart_uploads    ACL     �   GRANT ALL ON TABLE storage.s3_multipart_uploads TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads TO anon;
GRANT ALL ON TABLE storage.s3_multipart_uploads TO postgres;
          storage          supabase_storage_admin    false    308            5           1259    29901    s3_multipart_uploads_parts    TABLE     �  CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);
 /   DROP TABLE storage.s3_multipart_uploads_parts;
       storage         heap    supabase_storage_admin    false    26            �           0    0     TABLE s3_multipart_uploads_parts    ACL       GRANT ALL ON TABLE storage.s3_multipart_uploads_parts TO service_role;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO authenticated;
GRANT SELECT ON TABLE storage.s3_multipart_uploads_parts TO anon;
GRANT ALL ON TABLE storage.s3_multipart_uploads_parts TO postgres;
          storage          supabase_storage_admin    false    309            �            1259    29475    decrypted_secrets    VIEW     �  CREATE VIEW vault.decrypted_secrets AS
 SELECT secrets.id,
    secrets.name,
    secrets.description,
    secrets.secret,
        CASE
            WHEN (secrets.secret IS NULL) THEN NULL::text
            ELSE
            CASE
                WHEN (secrets.key_id IS NULL) THEN NULL::text
                ELSE convert_from(pgsodium.crypto_aead_det_decrypt(decode(secrets.secret, 'base64'::text), convert_to(((((secrets.id)::text || secrets.description) || (secrets.created_at)::text) || (secrets.updated_at)::text), 'utf8'::name), secrets.key_id, secrets.nonce), 'utf8'::name)
            END
        END AS decrypted_secret,
    secrets.key_id,
    secrets.nonce,
    secrets.created_at,
    secrets.updated_at
   FROM vault.secrets;
 #   DROP VIEW vault.decrypted_secrets;
       vault          supabase_admin    false    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    2    16    3    2    2    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    16    2    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    2    16    16    2    16    2    16    2    16    2    16    16    2    16    18    18                       2604    29909    refresh_tokens id    DEFAULT     r   ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);
 >   ALTER TABLE auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
       auth          supabase_auth_admin    false    285    284                       2604    29910    matches2 id    DEFAULT     r   ALTER TABLE ONLY extensions.matches2 ALTER COLUMN id SET DEFAULT nextval('extensions.matches2_id_seq'::regclass);
 >   ALTER TABLE extensions.matches2 ALTER COLUMN id DROP DEFAULT;
    
   extensions          postgres    false    295    294                       2604    29911 	   teams2 id    DEFAULT     n   ALTER TABLE ONLY extensions.teams2 ALTER COLUMN id SET DEFAULT nextval('extensions.teams2_id_seq'::regclass);
 <   ALTER TABLE extensions.teams2 ALTER COLUMN id DROP DEFAULT;
    
   extensions          postgres    false    298    297                       2604    29912    messages id    DEFAULT     n   ALTER TABLE ONLY realtime.messages ALTER COLUMN id SET DEFAULT nextval('realtime.messages_id_seq'::regclass);
 <   ALTER TABLE realtime.messages ALTER COLUMN id DROP DEFAULT;
       realtime          supabase_realtime_admin    false    301    300            �          0    29640    coach_match 
   TABLE DATA           b   COPY _flms.coach_match (coach_id, club_name, event, match_id, event_time, event_half) FROM stdin;
    _flms          postgres    false    256   ��      �          0    29645 
   coach_team 
   TABLE DATA           F   COPY _flms.coach_team (coach_id, club_name, begin, "end") FROM stdin;
    _flms          postgres    false    257   ��      �          0    29651    coaches 
   TABLE DATA           R   COPY _flms.coaches (coach_name, nationality, coach_id, date_of_birth) FROM stdin;
    _flms          postgres    false    258   B�      �          0    29657    matches 
   TABLE DATA           [   COPY _flms.matches (matchweek, home_ticket, away_ticket, match_time, match_id) FROM stdin;
    _flms          postgres    false    260   ,�      �          0    29662    player_match 
   TABLE DATA           d   COPY _flms.player_match (player_id, match_id, club_name, event, event_time, event_half) FROM stdin;
    _flms          postgres    false    261   ��      �          0    29667    player_team 
   TABLE DATA           V   COPY _flms.player_team (club_name, begin, "end", player_id, shirt_number) FROM stdin;
    _flms          postgres    false    262   �      �          0    29673    players 
   TABLE DATA           S   COPY _flms.players (player_name, player_id, "position", date_of_birth) FROM stdin;
    _flms          postgres    false    263   	�      �          0    29679 	   ref_match 
   TABLE DATA           4   COPY _flms.ref_match (match_id, ref_id) FROM stdin;
    _flms          postgres    false    265   ��      �          0    29684    referees 
   TABLE DATA           3   COPY _flms.referees (ref_id, ref_name) FROM stdin;
    _flms          postgres    false    266   ��      �          0    29689    stadiums 
   TABLE DATA           C   COPY _flms.stadiums (stadium_name, location, capacity) FROM stdin;
    _flms          postgres    false    267   �      �          0    29694 
   team_match 
   TABLE DATA           P   COPY _flms.team_match (club_name, match_id, home_away, goal_scored) FROM stdin;
    _flms          postgres    false    268   ��      �          0    29699    teams 
   TABLE DATA           �   COPY _flms.teams (club_name, point, goal_difference, "position", stadium_name, club_code, won, drawn, lost, played) FROM stdin;
    _flms          postgres    false    269   �      �          0    29730    audit_log_entries 
   TABLE DATA           [   COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
    auth          supabase_auth_admin    false    276   }�      �          0    29736 
   flow_state 
   TABLE DATA           �   COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at) FROM stdin;
    auth          supabase_auth_admin    false    277   ��      �          0    29741 
   identities 
   TABLE DATA           ~   COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
    auth          supabase_auth_admin    false    278   ��      �          0    29748 	   instances 
   TABLE DATA           T   COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    279   ��      �          0    29753    mfa_amr_claims 
   TABLE DATA           e   COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
    auth          supabase_auth_admin    false    280   ��      �          0    29758    mfa_challenges 
   TABLE DATA           d   COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code) FROM stdin;
    auth          supabase_auth_admin    false    281   �      �          0    29763    mfa_factors 
   TABLE DATA           �   COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at) FROM stdin;
    auth          supabase_auth_admin    false    282   +�      �          0    29768    one_time_tokens 
   TABLE DATA           p   COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    283   H�      �          0    29776    refresh_tokens 
   TABLE DATA           |   COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
    auth          supabase_auth_admin    false    284   e�      �          0    29782    saml_providers 
   TABLE DATA           �   COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
    auth          supabase_auth_admin    false    286   ��      �          0    29790    saml_relay_states 
   TABLE DATA           �   COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
    auth          supabase_auth_admin    false    287   ��      �          0    29796    schema_migrations 
   TABLE DATA           2   COPY auth.schema_migrations (version) FROM stdin;
    auth          supabase_auth_admin    false    288   ��      �          0    29799    sessions 
   TABLE DATA           �   COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag) FROM stdin;
    auth          supabase_auth_admin    false    289   �      �          0    29804    sso_domains 
   TABLE DATA           X   COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    290   -�      �          0    29810    sso_providers 
   TABLE DATA           N   COPY auth.sso_providers (id, resource_id, created_at, updated_at) FROM stdin;
    auth          supabase_auth_admin    false    291   J�      �          0    29816    users 
   TABLE DATA           O  COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
    auth          supabase_auth_admin    false    292   g�      �          0    29831    match_schedule 
   TABLE DATA           :   COPY extensions.match_schedule (team1, team2) FROM stdin;
 
   extensions          postgres    false    293   ��      �          0    29836    matches2 
   TABLE DATA           T   COPY extensions.matches2 (id, home_team_id, away_team_id, random_order) FROM stdin;
 
   extensions          postgres    false    294   ��      �          0    29844    teams2 
   TABLE DATA           .   COPY extensions.teams2 (id, name) FROM stdin;
 
   extensions          postgres    false    297   H�      �          0    29208    key 
   TABLE DATA           �   COPY pgsodium.key (id, status, created, expires, key_type, key_id, key_context, name, associated_data, raw_key, raw_key_nonce, parent_key, comment, user_data) FROM stdin;
    pgsodium          supabase_admin    false    243   A       �          0    29853    messages 
   TABLE DATA           S   COPY realtime.messages (id, topic, extension, inserted_at, updated_at) FROM stdin;
    realtime          supabase_realtime_admin    false    300   ^       �          0    29859    schema_migrations 
   TABLE DATA           C   COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
    realtime          supabase_admin    false    302   {       �          0    29862    subscription 
   TABLE DATA           b   COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at) FROM stdin;
    realtime          supabase_admin    false    303   �      �          0    29871    buckets 
   TABLE DATA           �   COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id) FROM stdin;
    storage          supabase_storage_admin    false    305   �      �          0    29880 
   migrations 
   TABLE DATA           B   COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
    storage          supabase_storage_admin    false    306         �          0    29884    objects 
   TABLE DATA           �   COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
    storage          supabase_storage_admin    false    307   �      �          0    29894    s3_multipart_uploads 
   TABLE DATA           �   COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
    storage          supabase_storage_admin    false    308         �          0    29901    s3_multipart_uploads_parts 
   TABLE DATA           �   COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
    storage          supabase_storage_admin    false    309   5      �          0    29456    secrets 
   TABLE DATA           f   COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
    vault          supabase_admin    false    251   R      �           0    0    coaches_coach_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('_flms.coaches_coach_id_seq', 66, true);
          _flms          postgres    false    259            �           0    0    players_player_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('_flms.players_player_id_seq', 1276, true);
          _flms          postgres    false    264            �           0    0    refresh_tokens_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 1, false);
          auth          supabase_auth_admin    false    285            �           0    0    matches2_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('extensions.matches2_id_seq', 380, true);
       
   extensions          postgres    false    295            �           0    0    teams2_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('extensions.teams2_id_seq', 20, true);
       
   extensions          postgres    false    298            �           0    0    key_key_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('pgsodium.key_key_id_seq', 1, false);
          pgsodium          supabase_admin    false    242            �           0    0    messages_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('realtime.messages_id_seq', 1, false);
          realtime          supabase_realtime_admin    false    301            �           0    0    subscription_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('realtime.subscription_id_seq', 1, false);
          realtime          supabase_admin    false    304            T           2606    29914    teams Teams_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY _flms.teams
    ADD CONSTRAINT "Teams_pkey" PRIMARY KEY (club_name);
 ;   ALTER TABLE ONLY _flms.teams DROP CONSTRAINT "Teams_pkey";
       _flms            postgres    false    269            <           2606    29916    coaches coaches_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY _flms.coaches
    ADD CONSTRAINT coaches_pkey PRIMARY KEY (coach_id);
 =   ALTER TABLE ONLY _flms.coaches DROP CONSTRAINT coaches_pkey;
       _flms            postgres    false    258            @           2606    29918    matches matches_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY _flms.matches
    ADD CONSTRAINT matches_pkey PRIMARY KEY (match_id);
 =   ALTER TABLE ONLY _flms.matches DROP CONSTRAINT matches_pkey;
       _flms            postgres    false    260            G           2606    29920    players players_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY _flms.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);
 =   ALTER TABLE ONLY _flms.players DROP CONSTRAINT players_pkey;
       _flms            postgres    false    263            J           2606    29922    ref_match ref_match_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY _flms.ref_match
    ADD CONSTRAINT ref_match_pkey PRIMARY KEY (match_id, ref_id);
 A   ALTER TABLE ONLY _flms.ref_match DROP CONSTRAINT ref_match_pkey;
       _flms            postgres    false    265    265            L           2606    29924    referees referee_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY _flms.referees
    ADD CONSTRAINT referee_pkey PRIMARY KEY (ref_id);
 >   ALTER TABLE ONLY _flms.referees DROP CONSTRAINT referee_pkey;
       _flms            postgres    false    266            N           2606    29926    stadiums stadiums_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY _flms.stadiums
    ADD CONSTRAINT stadiums_pkey PRIMARY KEY (stadium_name);
 ?   ALTER TABLE ONLY _flms.stadiums DROP CONSTRAINT stadiums_pkey;
       _flms            postgres    false    267            R           2606    29928    team_match team_match_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY _flms.team_match
    ADD CONSTRAINT team_match_pkey PRIMARY KEY (match_id, club_name);
 C   ALTER TABLE ONLY _flms.team_match DROP CONSTRAINT team_match_pkey;
       _flms            postgres    false    268    268            D           2606    29930    player_team unique_club_shirt 
   CONSTRAINT     j   ALTER TABLE ONLY _flms.player_team
    ADD CONSTRAINT unique_club_shirt UNIQUE (club_name, shirt_number);
 F   ALTER TABLE ONLY _flms.player_team DROP CONSTRAINT unique_club_shirt;
       _flms            postgres    false    262    262            f           2606    29932    mfa_amr_claims amr_id_pk 
   CONSTRAINT     T   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT amr_id_pk;
       auth            supabase_auth_admin    false    280            V           2606    29934 (   audit_log_entries audit_log_entries_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.audit_log_entries DROP CONSTRAINT audit_log_entries_pkey;
       auth            supabase_auth_admin    false    276            Z           2606    29936    flow_state flow_state_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.flow_state DROP CONSTRAINT flow_state_pkey;
       auth            supabase_auth_admin    false    277            _           2606    29938    identities identities_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_pkey;
       auth            supabase_auth_admin    false    278            a           2606    29940 1   identities identities_provider_id_provider_unique 
   CONSTRAINT     {   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);
 Y   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_provider_id_provider_unique;
       auth            supabase_auth_admin    false    278    278            d           2606    29942    instances instances_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY auth.instances DROP CONSTRAINT instances_pkey;
       auth            supabase_auth_admin    false    279            h           2606    29944 C   mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);
 k   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey;
       auth            supabase_auth_admin    false    280    280            k           2606    29946 "   mfa_challenges mfa_challenges_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_pkey;
       auth            supabase_auth_admin    false    281            n           2606    30313 .   mfa_factors mfa_factors_last_challenged_at_key 
   CONSTRAINT     u   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);
 V   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_last_challenged_at_key;
       auth            supabase_auth_admin    false    282            p           2606    30310 !   mfa_factors mfa_factors_phone_key 
   CONSTRAINT     [   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_phone_key UNIQUE (phone);
 I   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_phone_key;
       auth            supabase_auth_admin    false    282            r           2606    29948    mfa_factors mfa_factors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_pkey;
       auth            supabase_auth_admin    false    282            w           2606    29950 $   one_time_tokens one_time_tokens_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_pkey;
       auth            supabase_auth_admin    false    283                       2606    29952 "   refresh_tokens refresh_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_pkey;
       auth            supabase_auth_admin    false    284            �           2606    29954 *   refresh_tokens refresh_tokens_token_unique 
   CONSTRAINT     d   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);
 R   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_token_unique;
       auth            supabase_auth_admin    false    284            �           2606    29956 +   saml_providers saml_providers_entity_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);
 S   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_entity_id_key;
       auth            supabase_auth_admin    false    286            �           2606    29958 "   saml_providers saml_providers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_pkey;
       auth            supabase_auth_admin    false    286            �           2606    29960 (   saml_relay_states saml_relay_states_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_pkey;
       auth            supabase_auth_admin    false    287            �           2606    29962 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 P   ALTER TABLE ONLY auth.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       auth            supabase_auth_admin    false    288            �           2606    29964    sessions sessions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_pkey;
       auth            supabase_auth_admin    false    289            �           2606    29966    sso_domains sso_domains_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_pkey;
       auth            supabase_auth_admin    false    290            �           2606    29968     sso_providers sso_providers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY auth.sso_providers DROP CONSTRAINT sso_providers_pkey;
       auth            supabase_auth_admin    false    291            �           2606    29970    users users_phone_key 
   CONSTRAINT     O   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 =   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_phone_key;
       auth            supabase_auth_admin    false    292            �           2606    29972    users users_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY auth.users DROP CONSTRAINT users_pkey;
       auth            supabase_auth_admin    false    292            �           2606    29974    matches2 matches2_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY extensions.matches2
    ADD CONSTRAINT matches2_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY extensions.matches2 DROP CONSTRAINT matches2_pkey;
    
   extensions            postgres    false    294            �           2606    29976    teams2 teams2_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY extensions.teams2
    ADD CONSTRAINT teams2_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY extensions.teams2 DROP CONSTRAINT teams2_pkey;
    
   extensions            postgres    false    297            �           2606    29978    messages messages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY realtime.messages DROP CONSTRAINT messages_pkey;
       realtime            supabase_realtime_admin    false    300            �           2606    29980    subscription pk_subscription 
   CONSTRAINT     \   ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);
 H   ALTER TABLE ONLY realtime.subscription DROP CONSTRAINT pk_subscription;
       realtime            supabase_admin    false    303            �           2606    29982 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 T   ALTER TABLE ONLY realtime.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       realtime            supabase_admin    false    302            �           2606    29984    buckets buckets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.buckets DROP CONSTRAINT buckets_pkey;
       storage            supabase_storage_admin    false    305            �           2606    29986    migrations migrations_name_key 
   CONSTRAINT     Z   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);
 I   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_name_key;
       storage            supabase_storage_admin    false    306            �           2606    29988    migrations migrations_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY storage.migrations DROP CONSTRAINT migrations_pkey;
       storage            supabase_storage_admin    false    306            �           2606    29990    objects objects_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY storage.objects DROP CONSTRAINT objects_pkey;
       storage            supabase_storage_admin    false    307            �           2606    29992 :   s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_pkey;
       storage            supabase_storage_admin    false    309            �           2606    29994 .   s3_multipart_uploads s3_multipart_uploads_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_pkey;
       storage            supabase_storage_admin    false    308            A           1259    29995    idx_begin_date    INDEX     F   CREATE INDEX idx_begin_date ON _flms.player_team USING btree (begin);
 !   DROP INDEX _flms.idx_begin_date;
       _flms            postgres    false    262            8           1259    29996    idx_club_name    INDEX     I   CREATE INDEX idx_club_name ON _flms.coach_match USING btree (club_name);
     DROP INDEX _flms.idx_club_name;
       _flms            postgres    false    256            =           1259    29997    idx_coach_name    INDEX     G   CREATE INDEX idx_coach_name ON _flms.coaches USING btree (coach_name);
 !   DROP INDEX _flms.idx_coach_name;
       _flms            postgres    false    258            B           1259    29998    idx_end_date    INDEX     D   CREATE INDEX idx_end_date ON _flms.player_team USING btree ("end");
    DROP INDEX _flms.idx_end_date;
       _flms            postgres    false    262            9           1259    29999 	   idx_event    INDEX     A   CREATE INDEX idx_event ON _flms.coach_match USING btree (event);
    DROP INDEX _flms.idx_event;
       _flms            postgres    false    256            :           1259    30000    idx_match_id    INDEX     G   CREATE INDEX idx_match_id ON _flms.coach_match USING btree (match_id);
    DROP INDEX _flms.idx_match_id;
       _flms            postgres    false    256            >           1259    30001    idx_matches    INDEX     B   CREATE INDEX idx_matches ON _flms.matches USING btree (match_id);
    DROP INDEX _flms.idx_matches;
       _flms            postgres    false    260            E           1259    30002    idx_player_name    INDEX     I   CREATE INDEX idx_player_name ON _flms.players USING btree (player_name);
 "   DROP INDEX _flms.idx_player_name;
       _flms            postgres    false    263            H           1259    30003 
   idx_ref_id    INDEX     A   CREATE INDEX idx_ref_id ON _flms.ref_match USING btree (ref_id);
    DROP INDEX _flms.idx_ref_id;
       _flms            postgres    false    265            O           1259    30004    idx_team_match_club_name    INDEX     S   CREATE INDEX idx_team_match_club_name ON _flms.team_match USING btree (club_name);
 +   DROP INDEX _flms.idx_team_match_club_name;
       _flms            postgres    false    268            P           1259    30005    idx_team_match_match_id    INDEX     Q   CREATE INDEX idx_team_match_match_id ON _flms.team_match USING btree (match_id);
 *   DROP INDEX _flms.idx_team_match_match_id;
       _flms            postgres    false    268            W           1259    30006    audit_logs_instance_id_idx    INDEX     ]   CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);
 ,   DROP INDEX auth.audit_logs_instance_id_idx;
       auth            supabase_auth_admin    false    276            �           1259    30007    confirmation_token_idx    INDEX     �   CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);
 (   DROP INDEX auth.confirmation_token_idx;
       auth            supabase_auth_admin    false    292    292            �           1259    30008    email_change_token_current_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);
 0   DROP INDEX auth.email_change_token_current_idx;
       auth            supabase_auth_admin    false    292    292            �           1259    30009    email_change_token_new_idx    INDEX     �   CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.email_change_token_new_idx;
       auth            supabase_auth_admin    false    292    292            l           1259    30010    factor_id_created_at_idx    INDEX     ]   CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);
 *   DROP INDEX auth.factor_id_created_at_idx;
       auth            supabase_auth_admin    false    282    282            X           1259    30011    flow_state_created_at_idx    INDEX     Y   CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);
 +   DROP INDEX auth.flow_state_created_at_idx;
       auth            supabase_auth_admin    false    277            ]           1259    30012    identities_email_idx    INDEX     [   CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);
 &   DROP INDEX auth.identities_email_idx;
       auth            supabase_auth_admin    false    278            �           0    0    INDEX identities_email_idx    COMMENT     c   COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';
          auth          supabase_auth_admin    false    3933            b           1259    30013    identities_user_id_idx    INDEX     N   CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);
 (   DROP INDEX auth.identities_user_id_idx;
       auth            supabase_auth_admin    false    278            [           1259    30014    idx_auth_code    INDEX     G   CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);
    DROP INDEX auth.idx_auth_code;
       auth            supabase_auth_admin    false    277            \           1259    30015    idx_user_id_auth_method    INDEX     f   CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);
 )   DROP INDEX auth.idx_user_id_auth_method;
       auth            supabase_auth_admin    false    277    277            i           1259    30016    mfa_challenge_created_at_idx    INDEX     `   CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);
 .   DROP INDEX auth.mfa_challenge_created_at_idx;
       auth            supabase_auth_admin    false    281            s           1259    30017 %   mfa_factors_user_friendly_name_unique    INDEX     �   CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);
 7   DROP INDEX auth.mfa_factors_user_friendly_name_unique;
       auth            supabase_auth_admin    false    282    282    282            t           1259    30018    mfa_factors_user_id_idx    INDEX     P   CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);
 )   DROP INDEX auth.mfa_factors_user_id_idx;
       auth            supabase_auth_admin    false    282            x           1259    30019 #   one_time_tokens_relates_to_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);
 5   DROP INDEX auth.one_time_tokens_relates_to_hash_idx;
       auth            supabase_auth_admin    false    283            y           1259    30020 #   one_time_tokens_token_hash_hash_idx    INDEX     b   CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);
 5   DROP INDEX auth.one_time_tokens_token_hash_hash_idx;
       auth            supabase_auth_admin    false    283            z           1259    30021 &   one_time_tokens_user_id_token_type_key    INDEX     v   CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);
 8   DROP INDEX auth.one_time_tokens_user_id_token_type_key;
       auth            supabase_auth_admin    false    283    283            �           1259    30022    reauthentication_token_idx    INDEX     �   CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);
 ,   DROP INDEX auth.reauthentication_token_idx;
       auth            supabase_auth_admin    false    292    292            �           1259    30023    recovery_token_idx    INDEX     �   CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);
 $   DROP INDEX auth.recovery_token_idx;
       auth            supabase_auth_admin    false    292    292            {           1259    30024    refresh_tokens_instance_id_idx    INDEX     ^   CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);
 0   DROP INDEX auth.refresh_tokens_instance_id_idx;
       auth            supabase_auth_admin    false    284            |           1259    30025 &   refresh_tokens_instance_id_user_id_idx    INDEX     o   CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);
 8   DROP INDEX auth.refresh_tokens_instance_id_user_id_idx;
       auth            supabase_auth_admin    false    284    284            }           1259    30026    refresh_tokens_parent_idx    INDEX     T   CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);
 +   DROP INDEX auth.refresh_tokens_parent_idx;
       auth            supabase_auth_admin    false    284            �           1259    30027 %   refresh_tokens_session_id_revoked_idx    INDEX     m   CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);
 7   DROP INDEX auth.refresh_tokens_session_id_revoked_idx;
       auth            supabase_auth_admin    false    284    284            �           1259    30028    refresh_tokens_updated_at_idx    INDEX     a   CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);
 /   DROP INDEX auth.refresh_tokens_updated_at_idx;
       auth            supabase_auth_admin    false    284            �           1259    30029 "   saml_providers_sso_provider_id_idx    INDEX     f   CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);
 4   DROP INDEX auth.saml_providers_sso_provider_id_idx;
       auth            supabase_auth_admin    false    286            �           1259    30030     saml_relay_states_created_at_idx    INDEX     g   CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);
 2   DROP INDEX auth.saml_relay_states_created_at_idx;
       auth            supabase_auth_admin    false    287            �           1259    30031    saml_relay_states_for_email_idx    INDEX     `   CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);
 1   DROP INDEX auth.saml_relay_states_for_email_idx;
       auth            supabase_auth_admin    false    287            �           1259    30032 %   saml_relay_states_sso_provider_id_idx    INDEX     l   CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);
 7   DROP INDEX auth.saml_relay_states_sso_provider_id_idx;
       auth            supabase_auth_admin    false    287            �           1259    30033    sessions_not_after_idx    INDEX     S   CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);
 (   DROP INDEX auth.sessions_not_after_idx;
       auth            supabase_auth_admin    false    289            �           1259    30034    sessions_user_id_idx    INDEX     J   CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);
 &   DROP INDEX auth.sessions_user_id_idx;
       auth            supabase_auth_admin    false    289            �           1259    30035    sso_domains_domain_idx    INDEX     \   CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));
 (   DROP INDEX auth.sso_domains_domain_idx;
       auth            supabase_auth_admin    false    290    290            �           1259    30036    sso_domains_sso_provider_id_idx    INDEX     `   CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);
 1   DROP INDEX auth.sso_domains_sso_provider_id_idx;
       auth            supabase_auth_admin    false    290            �           1259    30037    sso_providers_resource_id_idx    INDEX     j   CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));
 /   DROP INDEX auth.sso_providers_resource_id_idx;
       auth            supabase_auth_admin    false    291    291            u           1259    30311    unique_verified_phone_factor    INDEX     c   CREATE UNIQUE INDEX unique_verified_phone_factor ON auth.mfa_factors USING btree (user_id, phone);
 .   DROP INDEX auth.unique_verified_phone_factor;
       auth            supabase_auth_admin    false    282    282            �           1259    30038    user_id_created_at_idx    INDEX     X   CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);
 (   DROP INDEX auth.user_id_created_at_idx;
       auth            supabase_auth_admin    false    289    289            �           1259    30039    users_email_partial_key    INDEX     k   CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);
 )   DROP INDEX auth.users_email_partial_key;
       auth            supabase_auth_admin    false    292    292            �           0    0    INDEX users_email_partial_key    COMMENT     }   COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';
          auth          supabase_auth_admin    false    4001            �           1259    30040    users_instance_id_email_idx    INDEX     h   CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));
 -   DROP INDEX auth.users_instance_id_email_idx;
       auth            supabase_auth_admin    false    292    292            �           1259    30041    users_instance_id_idx    INDEX     L   CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);
 '   DROP INDEX auth.users_instance_id_idx;
       auth            supabase_auth_admin    false    292            �           1259    30042    users_is_anonymous_idx    INDEX     N   CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);
 (   DROP INDEX auth.users_is_anonymous_idx;
       auth            supabase_auth_admin    false    292            �           1259    30043    ix_realtime_subscription_entity    INDEX     [   CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING hash (entity);
 5   DROP INDEX realtime.ix_realtime_subscription_entity;
       realtime            supabase_admin    false    303            �           1259    30044    messages_topic_index    INDEX     L   CREATE INDEX messages_topic_index ON realtime.messages USING btree (topic);
 *   DROP INDEX realtime.messages_topic_index;
       realtime            supabase_realtime_admin    false    300            �           1259    30045 /   subscription_subscription_id_entity_filters_key    INDEX     �   CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_key ON realtime.subscription USING btree (subscription_id, entity, filters);
 E   DROP INDEX realtime.subscription_subscription_id_entity_filters_key;
       realtime            supabase_admin    false    303    303    303            �           1259    30046    bname    INDEX     A   CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);
    DROP INDEX storage.bname;
       storage            supabase_storage_admin    false    305            �           1259    30047    bucketid_objname    INDEX     W   CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);
 %   DROP INDEX storage.bucketid_objname;
       storage            supabase_storage_admin    false    307    307            �           1259    30048    idx_multipart_uploads_list    INDEX     r   CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);
 /   DROP INDEX storage.idx_multipart_uploads_list;
       storage            supabase_storage_admin    false    308    308    308            �           1259    30049    idx_objects_bucket_id_name    INDEX     f   CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");
 /   DROP INDEX storage.idx_objects_bucket_id_name;
       storage            supabase_storage_admin    false    307    307            �           1259    30050    name_prefix_search    INDEX     X   CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);
 '   DROP INDEX storage.name_prefix_search;
       storage            supabase_storage_admin    false    307            �           2618    29711    top_appearance _RETURN    RULE       CREATE OR REPLACE VIEW _flms.top_appearance AS
 SELECT players.player_id,
    players.player_name,
    players."position",
    player_team.club_name,
    count(player_match.event) AS apperance
   FROM ((_flms.players
     JOIN _flms.player_team USING (player_id))
     JOIN _flms.player_match USING (player_id, club_name))
  WHERE ((player_match.event)::text = 'start'::text)
  GROUP BY players.player_id, player_match.event, player_team.club_name, player_team.shirt_number
  ORDER BY (count(player_match.event)) DESC;
 �   CREATE OR REPLACE VIEW _flms.top_appearance AS
SELECT
    NULL::bigint AS player_id,
    NULL::character varying AS player_name,
    NULL::character varying AS "position",
    NULL::character varying AS club_name,
    NULL::bigint AS apperance;
       _flms          postgres    false    262    3911    263    263    263    262    262    261    261    261    271            �           2618    29725    top_goal_scorer _RETURN    RULE       CREATE OR REPLACE VIEW _flms.top_goal_scorer AS
 SELECT players.player_id,
    players.player_name,
    players."position",
    player_team.club_name,
    count(player_match.event) AS goal
   FROM ((_flms.players
     JOIN _flms.player_team USING (player_id))
     JOIN _flms.player_match USING (player_id, club_name))
  WHERE ((player_match.event)::text = 'goal'::text)
  GROUP BY players.player_id, player_match.event, player_team.club_name, player_team.shirt_number
  ORDER BY (count(player_match.event)) DESC;
 �   CREATE OR REPLACE VIEW _flms.top_goal_scorer AS
SELECT
    NULL::bigint AS player_id,
    NULL::character varying AS player_name,
    NULL::character varying AS "position",
    NULL::character varying AS club_name,
    NULL::bigint AS goal;
       _flms          postgres    false    261    261    261    263    263    263    3911    262    262    262    274            �           2618    29729    top_red_card _RETURN    RULE       CREATE OR REPLACE VIEW _flms.top_red_card AS
 SELECT players.player_id,
    players.player_name,
    players."position",
    player_team.club_name,
    count(player_match.event) AS red
   FROM ((_flms.players
     JOIN _flms.player_team USING (player_id))
     JOIN _flms.player_match USING (player_id, club_name))
  WHERE ((player_match.event)::text = 'red_card'::text)
  GROUP BY players.player_id, player_match.event, player_team.club_name, player_team.shirt_number
  ORDER BY (count(player_match.event)) DESC;
 �   CREATE OR REPLACE VIEW _flms.top_red_card AS
SELECT
    NULL::bigint AS player_id,
    NULL::character varying AS player_name,
    NULL::character varying AS "position",
    NULL::character varying AS club_name,
    NULL::bigint AS red;
       _flms          postgres    false    261    3911    263    263    263    262    262    262    261    261    275            �           2620    30054 %   coach_match coach_match_event_trigger    TRIGGER     �   CREATE TRIGGER coach_match_event_trigger BEFORE INSERT OR UPDATE ON _flms.coach_match FOR EACH ROW EXECUTE FUNCTION extensions.coach_match_event_trigger_function();
 =   DROP TRIGGER coach_match_event_trigger ON _flms.coach_match;
       _flms          postgres    false    256    541            �           2620    30055 &   player_match player_match_delete_event    TRIGGER     �   CREATE TRIGGER player_match_delete_event AFTER DELETE ON _flms.player_match FOR EACH ROW EXECUTE FUNCTION extensions.player_match_delete_event_trigger();
 >   DROP TRIGGER player_match_delete_event ON _flms.player_match;
       _flms          postgres    false    261    551            �           2620    30056 '   player_match player_match_event_trigger    TRIGGER     �   CREATE TRIGGER player_match_event_trigger BEFORE INSERT OR UPDATE ON _flms.player_match FOR EACH ROW EXECUTE FUNCTION extensions.player_match_event_trigger_function();
 ?   DROP TRIGGER player_match_event_trigger ON _flms.player_match;
       _flms          postgres    false    552    261            �           2620    30057 '   coach_team validate_coach_limit_trigger    TRIGGER     �   CREATE TRIGGER validate_coach_limit_trigger BEFORE INSERT ON _flms.coach_team FOR EACH ROW EXECUTE FUNCTION extensions.validate_coach_limit();
 ?   DROP TRIGGER validate_coach_limit_trigger ON _flms.coach_team;
       _flms          postgres    false    257    557            �           2620    30058 ,   coach_team validate_contract_overlap_trigger    TRIGGER     �   CREATE TRIGGER validate_contract_overlap_trigger BEFORE INSERT OR UPDATE ON _flms.coach_team FOR EACH ROW EXECUTE FUNCTION extensions.validate_contract_overlap();
 D   DROP TRIGGER validate_contract_overlap_trigger ON _flms.coach_team;
       _flms          postgres    false    257    559            �           2620    30059 -   player_team validate_contract_overlap_trigger    TRIGGER     �   CREATE TRIGGER validate_contract_overlap_trigger BEFORE INSERT OR UPDATE ON _flms.player_team FOR EACH ROW EXECUTE FUNCTION extensions.validate_contract_overlap();
 E   DROP TRIGGER validate_contract_overlap_trigger ON _flms.player_team;
       _flms          postgres    false    559    262            �           2620    30060 )   player_team validate_player_limit_trigger    TRIGGER     �   CREATE TRIGGER validate_player_limit_trigger BEFORE INSERT ON _flms.player_team FOR EACH ROW EXECUTE FUNCTION extensions.validate_player_limit();
 A   DROP TRIGGER validate_player_limit_trigger ON _flms.player_team;
       _flms          postgres    false    262    562            �           2620    30061 !   teams validate_team_limit_trigger    TRIGGER     �   CREATE TRIGGER validate_team_limit_trigger BEFORE INSERT ON _flms.teams FOR EACH ROW EXECUTE FUNCTION extensions.validate_team_limit();
 9   DROP TRIGGER validate_team_limit_trigger ON _flms.teams;
       _flms          postgres    false    269    563            �           2620    30062    subscription tr_check_filters    TRIGGER     �   CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();
 8   DROP TRIGGER tr_check_filters ON realtime.subscription;
       realtime          supabase_admin    false    572    303            �           2620    30063 !   objects update_objects_updated_at    TRIGGER     �   CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();
 ;   DROP TRIGGER update_objects_updated_at ON storage.objects;
       storage          supabase_storage_admin    false    584    307            �           2606    30064 &   coach_match coach_match_club_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.coach_match
    ADD CONSTRAINT coach_match_club_name_fkey FOREIGN KEY (club_name) REFERENCES _flms.teams(club_name) NOT VALID;
 O   ALTER TABLE ONLY _flms.coach_match DROP CONSTRAINT coach_match_club_name_fkey;
       _flms          postgres    false    256    3924    269            �           2606    30069 %   coach_match coach_match_coach_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.coach_match
    ADD CONSTRAINT coach_match_coach_id_fkey FOREIGN KEY (coach_id) REFERENCES _flms.coaches(coach_id) NOT VALID;
 N   ALTER TABLE ONLY _flms.coach_match DROP CONSTRAINT coach_match_coach_id_fkey;
       _flms          postgres    false    3900    256    258            �           2606    30074 %   coach_match coach_match_match_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.coach_match
    ADD CONSTRAINT coach_match_match_id_fkey FOREIGN KEY (match_id) REFERENCES _flms.matches(match_id);
 N   ALTER TABLE ONLY _flms.coach_match DROP CONSTRAINT coach_match_match_id_fkey;
       _flms          postgres    false    260    256    3904            �           2606    30079 %   coach_team coach_team__club_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.coach_team
    ADD CONSTRAINT coach_team__club_name_fkey FOREIGN KEY (club_name) REFERENCES _flms.teams(club_name);
 N   ALTER TABLE ONLY _flms.coach_team DROP CONSTRAINT coach_team__club_name_fkey;
       _flms          postgres    false    257    3924    269            �           2606    30084 $   coach_team coach_team__coach_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.coach_team
    ADD CONSTRAINT coach_team__coach_id_fkey FOREIGN KEY (coach_id) REFERENCES _flms.coaches(coach_id);
 M   ALTER TABLE ONLY _flms.coach_team DROP CONSTRAINT coach_team__coach_id_fkey;
       _flms          postgres    false    3900    257    258            �           2606    30089 (   player_match player_match_club_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.player_match
    ADD CONSTRAINT player_match_club_name_fkey FOREIGN KEY (club_name) REFERENCES _flms.teams(club_name);
 Q   ALTER TABLE ONLY _flms.player_match DROP CONSTRAINT player_match_club_name_fkey;
       _flms          postgres    false    261    269    3924            �           2606    30094 '   player_match player_match_match_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.player_match
    ADD CONSTRAINT player_match_match_id_fkey FOREIGN KEY (match_id) REFERENCES _flms.matches(match_id);
 P   ALTER TABLE ONLY _flms.player_match DROP CONSTRAINT player_match_match_id_fkey;
       _flms          postgres    false    260    3904    261            �           2606    30099 (   player_match player_match_player_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.player_match
    ADD CONSTRAINT player_match_player_id_fkey FOREIGN KEY (player_id) REFERENCES _flms.players(player_id);
 Q   ALTER TABLE ONLY _flms.player_match DROP CONSTRAINT player_match_player_id_fkey;
       _flms          postgres    false    261    263    3911            �           2606    30104 &   player_team player_team_club_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.player_team
    ADD CONSTRAINT player_team_club_name_fkey FOREIGN KEY (club_name) REFERENCES _flms.teams(club_name) ON UPDATE CASCADE;
 O   ALTER TABLE ONLY _flms.player_team DROP CONSTRAINT player_team_club_name_fkey;
       _flms          postgres    false    3924    262    269            �           2606    30109 &   player_team player_team_player_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.player_team
    ADD CONSTRAINT player_team_player_id_fkey FOREIGN KEY (player_id) REFERENCES _flms.players(player_id);
 O   ALTER TABLE ONLY _flms.player_team DROP CONSTRAINT player_team_player_id_fkey;
       _flms          postgres    false    3911    263    262            �           2606    30114 !   ref_match ref_match_match_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.ref_match
    ADD CONSTRAINT ref_match_match_id_fkey FOREIGN KEY (match_id) REFERENCES _flms.matches(match_id);
 J   ALTER TABLE ONLY _flms.ref_match DROP CONSTRAINT ref_match_match_id_fkey;
       _flms          postgres    false    260    3904    265            �           2606    30119    ref_match ref_match_ref_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.ref_match
    ADD CONSTRAINT ref_match_ref_id_fkey FOREIGN KEY (ref_id) REFERENCES _flms.referees(ref_id) NOT VALID;
 H   ALTER TABLE ONLY _flms.ref_match DROP CONSTRAINT ref_match_ref_id_fkey;
       _flms          postgres    false    266    3916    265            �           2606    30124 $   team_match team_match_club_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.team_match
    ADD CONSTRAINT team_match_club_name_fkey FOREIGN KEY (club_name) REFERENCES _flms.teams(club_name) NOT VALID;
 M   ALTER TABLE ONLY _flms.team_match DROP CONSTRAINT team_match_club_name_fkey;
       _flms          postgres    false    269    268    3924            �           2606    30129 #   team_match team_match_match_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.team_match
    ADD CONSTRAINT team_match_match_id_fkey FOREIGN KEY (match_id) REFERENCES _flms.matches(match_id);
 L   ALTER TABLE ONLY _flms.team_match DROP CONSTRAINT team_match_match_id_fkey;
       _flms          postgres    false    268    3904    260            �           2606    30134    teams teams_stadium_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY _flms.teams
    ADD CONSTRAINT teams_stadium_name_fkey FOREIGN KEY (stadium_name) REFERENCES _flms.stadiums(stadium_name) ON UPDATE RESTRICT ON DELETE RESTRICT;
 F   ALTER TABLE ONLY _flms.teams DROP CONSTRAINT teams_stadium_name_fkey;
       _flms          postgres    false    267    269    3918            �           2606    30139 "   identities identities_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY auth.identities DROP CONSTRAINT identities_user_id_fkey;
       auth          supabase_auth_admin    false    278    292    4008            �           2606    30144 -   mfa_amr_claims mfa_amr_claims_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.mfa_amr_claims DROP CONSTRAINT mfa_amr_claims_session_id_fkey;
       auth          supabase_auth_admin    false    289    3986    280            �           2606    30149 1   mfa_challenges mfa_challenges_auth_factor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY auth.mfa_challenges DROP CONSTRAINT mfa_challenges_auth_factor_id_fkey;
       auth          supabase_auth_admin    false    281    282    3954            �           2606    30154 $   mfa_factors mfa_factors_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY auth.mfa_factors DROP CONSTRAINT mfa_factors_user_id_fkey;
       auth          supabase_auth_admin    false    292    4008    282            �           2606    30159 ,   one_time_tokens one_time_tokens_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.one_time_tokens DROP CONSTRAINT one_time_tokens_user_id_fkey;
       auth          supabase_auth_admin    false    292    4008    283            �           2606    30164 -   refresh_tokens refresh_tokens_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY auth.refresh_tokens DROP CONSTRAINT refresh_tokens_session_id_fkey;
       auth          supabase_auth_admin    false    289    3986    284            �           2606    30169 2   saml_providers saml_providers_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY auth.saml_providers DROP CONSTRAINT saml_providers_sso_provider_id_fkey;
       auth          supabase_auth_admin    false    291    3994    286            �           2606    30174 6   saml_relay_states saml_relay_states_flow_state_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_flow_state_id_fkey;
       auth          supabase_auth_admin    false    277    3930    287            �           2606    30179 8   saml_relay_states saml_relay_states_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY auth.saml_relay_states DROP CONSTRAINT saml_relay_states_sso_provider_id_fkey;
       auth          supabase_auth_admin    false    291    3994    287            �           2606    30184    sessions sessions_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY auth.sessions DROP CONSTRAINT sessions_user_id_fkey;
       auth          supabase_auth_admin    false    292    289    4008            �           2606    30189 ,   sso_domains sso_domains_sso_provider_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY auth.sso_domains DROP CONSTRAINT sso_domains_sso_provider_id_fkey;
       auth          supabase_auth_admin    false    3994    290    291            �           2606    30194 #   matches2 matches2_away_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY extensions.matches2
    ADD CONSTRAINT matches2_away_team_id_fkey FOREIGN KEY (away_team_id) REFERENCES extensions.teams2(id);
 Q   ALTER TABLE ONLY extensions.matches2 DROP CONSTRAINT matches2_away_team_id_fkey;
    
   extensions          postgres    false    4012    294    297            �           2606    30199 #   matches2 matches2_home_team_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY extensions.matches2
    ADD CONSTRAINT matches2_home_team_id_fkey FOREIGN KEY (home_team_id) REFERENCES extensions.teams2(id);
 Q   ALTER TABLE ONLY extensions.matches2 DROP CONSTRAINT matches2_home_team_id_fkey;
    
   extensions          postgres    false    4012    294    297            �           2606    30204    objects objects_bucketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 J   ALTER TABLE ONLY storage.objects DROP CONSTRAINT "objects_bucketId_fkey";
       storage          supabase_storage_admin    false    4024    307    305            �           2606    30209 8   s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 c   ALTER TABLE ONLY storage.s3_multipart_uploads DROP CONSTRAINT s3_multipart_uploads_bucket_id_fkey;
       storage          supabase_storage_admin    false    4024    308    305            �           2606    30214 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey;
       storage          supabase_storage_admin    false    4024    305    309            �           2606    30219 D   s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey;
       storage          supabase_storage_admin    false    308    309    4036            �           0    29645 
   coach_team    ROW SECURITY     7   ALTER TABLE _flms.coach_team ENABLE ROW LEVEL SECURITY;          _flms          postgres    false    257            �           0    29730    audit_log_entries    ROW SECURITY     =   ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    276            �           0    29736 
   flow_state    ROW SECURITY     6   ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    277            �           0    29741 
   identities    ROW SECURITY     6   ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    278            �           0    29748 	   instances    ROW SECURITY     5   ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    279            �           0    29753    mfa_amr_claims    ROW SECURITY     :   ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    280            �           0    29758    mfa_challenges    ROW SECURITY     :   ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    281            �           0    29763    mfa_factors    ROW SECURITY     7   ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    282            �           0    29768    one_time_tokens    ROW SECURITY     ;   ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    283            �           0    29776    refresh_tokens    ROW SECURITY     :   ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    284            �           0    29782    saml_providers    ROW SECURITY     :   ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    286            �           0    29790    saml_relay_states    ROW SECURITY     =   ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    287            �           0    29796    schema_migrations    ROW SECURITY     =   ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    288            �           0    29799    sessions    ROW SECURITY     4   ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    289            �           0    29804    sso_domains    ROW SECURITY     7   ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    290            �           0    29810    sso_providers    ROW SECURITY     9   ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    291            �           0    29816    users    ROW SECURITY     1   ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;          auth          supabase_auth_admin    false    292            �           0    29853    messages    ROW SECURITY     8   ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;          realtime          supabase_realtime_admin    false    300            �           0    29871    buckets    ROW SECURITY     6   ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    305            �           0    29880 
   migrations    ROW SECURITY     9   ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    306            �           0    29884    objects    ROW SECURITY     6   ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    307            �           0    29894    s3_multipart_uploads    ROW SECURITY     C   ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    308            �           0    29901    s3_multipart_uploads_parts    ROW SECURITY     I   ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;          storage          supabase_storage_admin    false    309            �           6104    30224    supabase_realtime    PUBLICATION     Z   CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');
 $   DROP PUBLICATION supabase_realtime;
                postgres    false            �           6106    30225    supabase_realtime coaches    PUBLICATION TABLE     B   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.coaches;
          _flms          postgres    false    4261    258            �           6106    30226    supabase_realtime matches    PUBLICATION TABLE     B   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.matches;
          _flms          postgres    false    260    4261            �           6106    30227    supabase_realtime player_team    PUBLICATION TABLE     F   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.player_team;
          _flms          postgres    false    262    4261            �           6106    30228    supabase_realtime players    PUBLICATION TABLE     B   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.players;
          _flms          postgres    false    4261    263            �           6106    30229    supabase_realtime referees    PUBLICATION TABLE     C   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.referees;
          _flms          postgres    false    4261    266            �           6106    30230    supabase_realtime stadiums    PUBLICATION TABLE     C   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.stadiums;
          _flms          postgres    false    4261    267            �           6106    30231    supabase_realtime team_match    PUBLICATION TABLE     E   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.team_match;
          _flms          postgres    false    268    4261            �           6106    30232    supabase_realtime teams    PUBLICATION TABLE     @   ALTER PUBLICATION supabase_realtime ADD TABLE ONLY _flms.teams;
          _flms          postgres    false    269    4261            S
           826    30239     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON SEQUENCES TO dashboard_user;
          auth          supabase_auth_admin    false    27            T
           826    30240     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON FUNCTIONS TO dashboard_user;
          auth          supabase_auth_admin    false    27            R
           826    30241    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_auth_admin IN SCHEMA auth GRANT ALL ON TABLES TO dashboard_user;
          auth          supabase_auth_admin    false    27            F
           826    30242     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON SEQUENCES TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    25            E
           826    30243     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     |   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON FUNCTIONS TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    25            D
           826    30244    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     y   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA extensions GRANT ALL ON TABLES TO postgres WITH GRANT OPTION;
       
   extensions          supabase_admin    false    25            I
           826    30245     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON SEQUENCES TO service_role;
          graphql          supabase_admin    false    20            H
           826    30246     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON FUNCTIONS TO service_role;
          graphql          supabase_admin    false    20            G
           826    30247    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql GRANT ALL ON TABLES TO service_role;
          graphql          supabase_admin    false    20            X
           826    30248     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON SEQUENCES TO service_role;
          graphql_public          supabase_admin    false    19            Z
           826    30249     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON FUNCTIONS TO service_role;
          graphql_public          supabase_admin    false    19            Y
           826    30250    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA graphql_public GRANT ALL ON TABLES TO service_role;
          graphql_public          supabase_admin    false    19            J
           826    29257     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     r   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT ALL ON SEQUENCES TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    16            K
           826    29256    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     o   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium GRANT ALL ON TABLES TO pgsodium_keyholder;
          pgsodium          supabase_admin    false    16            L
           826    29254     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON SEQUENCES TO pgsodium_keyiduser;
          pgsodium_masks          supabase_admin    false    2            M
           826    29255     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     x   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON FUNCTIONS TO pgsodium_keyiduser;
          pgsodium_masks          supabase_admin    false    2            N
           826    29253    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     u   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA pgsodium_masks GRANT ALL ON TABLES TO pgsodium_keyiduser;
          pgsodium_masks          supabase_admin    false    2            V
           826    30251     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON SEQUENCES TO dashboard_user;
          realtime          supabase_admin    false    14            W
           826    30252     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON FUNCTIONS TO dashboard_user;
          realtime          supabase_admin    false    14            U
           826    30253    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     �   ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE supabase_admin IN SCHEMA realtime GRANT ALL ON TABLES TO dashboard_user;
          realtime          supabase_admin    false    14            O
           826    30254     DEFAULT PRIVILEGES FOR SEQUENCES    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON SEQUENCES TO service_role;
          storage          postgres    false    26            P
           826    30255     DEFAULT PRIVILEGES FOR FUNCTIONS    DEFAULT ACL     �  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON FUNCTIONS TO service_role;
          storage          postgres    false    26            Q
           826    30256    DEFAULT PRIVILEGES FOR TABLES    DEFAULT ACL     }  ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO anon;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO authenticated;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA storage GRANT ALL ON TABLES TO service_role;
          storage          postgres    false    26            �           3466    30268    issue_graphql_placeholder    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();
 .   DROP EVENT TRIGGER issue_graphql_placeholder;
                supabase_admin    false    553            �           3466    30306    issue_pg_cron_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();
 )   DROP EVENT TRIGGER issue_pg_cron_access;
                supabase_admin    false    544            �           3466    30267    issue_pg_graphql_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();
 ,   DROP EVENT TRIGGER issue_pg_graphql_access;
                supabase_admin    false    545            �           3466    30260    issue_pg_net_access    EVENT TRIGGER     �   CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();
 (   DROP EVENT TRIGGER issue_pg_net_access;
                postgres    false    546            �           3466    30269    pgrst_ddl_watch    EVENT TRIGGER     j   CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();
 $   DROP EVENT TRIGGER pgrst_ddl_watch;
                supabase_admin    false    549            �           3466    30270    pgrst_drop_watch    EVENT TRIGGER     e   CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();
 %   DROP EVENT TRIGGER pgrst_drop_watch;
                supabase_admin    false    550            �     x����N���;O�H ��Q#��G�g�J+��@gA�̠aH��?�d�mC���H����r����v��>n�ߞv����r}?n��s����������.n��⯚��CM�(�s�Oe5�h��^�7(F��jrs�������W�����T���!�?��M��Ϭ&eu�Ůy��n��&}��K�;��M��X��6����&�����<�Z�� #S�ɋ�C}��\��6���դ������� �����!a|�����dA���e�w������Z~;֏���u,f�Q���H2��GS�Q�8pƺN�GSa��J�Dk��q�
QN�!ʞ+0�I!Z�
p���F�)�B �+��-6���Q]���е�Vl*QA�)׀h
���2����j�*h`o�l��8+0��щ]�v-q'L+v�i}4=ɀRS}1��E����5%��j�{~zپ^2l��p��Dr���L!	W���y�r�|�\'��1Ե��˜�Kj0�r �"�9��6�Y䥄�:@�[���x*. �kDr�� �ϼN��Tg"3��-��e���r�dZ&Yjt����e���U�D��Tԅ�嫆E�0~��8��R����,/�������9@��K�֡np�@NՑ���� v
,3lJ��ԨϐQa=)按�]��d��TM,)�#�3��� }\��X�<`��Y
�0K�˭p}ի★�z�Y.�X:U�Wx|��b�њZ|��kf?5%���?)[}�l���u��²|�`�r����9	E0y|�<%Lk�L�-K��Ar�,����\�2�!����4׸d����m-OB*���q��8�`Juy4�7�'��$W���	��$t�&/�p��z�%���
]N���Q]�Ÿ!g����2f��YQ�?�ϻ�hdU�K {s���ΐ˳�=:�d�8lFl����6�Z�\v5��Ro4oC��x�GckX���'ց릘��۔@6�A��)�l*l`�5�\��ہ��¾N�UNܙ*��-����Ss�Y�Y�tQ��@ȉgS�/�a9r<Vs�;/�X��(W�[�!8�D0���O���� �� �90� s. `� ̫���r<�2)���� `N��N��9� 38eh 攇� <@ZS��5�ô�pX�F�u�6xE0�)�5�ô�2��v^d���E�z�N��C-�3&�z�ôL2&E������sF	PB��|49(5�U\��>�6�����C2��dl�)��(�����Zav%�c{���7�p4Etb�;�pX\G�h�������*��M�%����i
m��7}�b ��GF�ha{ruO�T`�hʷ�KS�����@jϽڻ���yI��͏�k5�N&E'	�R�����О(N�őФh��^��]{M�߶D3 =�r��b'�{lY����S�-K�CW�X-@�zGiRj��IQ� }u* \/l�5TczU�<vEG{u�&�	��^`�8{��{T[�=Y\��=N�����x�������}�lV��Pj7�I���v��&��;xڋ�G%�ZY�zc��gIMK4��/J%N�ZT��(�v9�8�iQi�B=�#�U�VM�Z��#՞��IJ�J4Fq\ԔՂ]ǲJtu����ˣ�OS/�i�^�ꀴ'�%�-��NKF��1��F�j��*��RO���ŗ�����k���g��{!u"��/V�� ��bJaG�E�3 uEp���|�G��?�#�z,D,�YD큞G�ic�.Q�4E�Q�9�>t�H�rmv$B����G����*ߥ(D R�@�:�ftԄ�Ia1�"�;&�$x4���� [
	�j�*褸��Je�=��a0��(�Q�[���!���*d�*f���U}h�P���l(w�L��\���ȓcfhc;���Nc�?��i2"K��HS&���&#"�ʹ��EL6Qs�6��Ŷ![D3�љS�m�E<.xm�êmg.3O�r��y�\�w�Zލ��ZLI��H���.��n�R��rQ����t���䠨z�5�����EiQ���D�P�"Tėe�Q^M!�«@ĞK>\0��#�|���hut7��
3���!p�����B{r�rQ���K��`��h^��L��*rGl ���Ud�E�0����k��b2�a��;ϤH�Q�Ϭ�T��g�S�<�������Y�Vo0�Wۆ"��3)E r���Α�d��I�8�z�l�%jc��؆��5��k�Q'�m9"[��I�i��S���l���9m㱧��G���L�i)O�;k�];�?S`g}>�/��j|�EN��sj0��SN��6R�:gi�%օ�;���?6�Y�^�ع�Zθ8��3=`C�Th�U] ���<��d!rDL�g�%����R�F�3�e�<�/�gJ@g
ȸD�2֎<c�,�pt��"���]�b�/Q�6T�p���g2"��עg���񟇴�b��?�6�ǣ���߾��h�Qo$�	�H�Q��.�Dt��i�	��h�Al�]���h�'1�xx#���F]v#��I;��� ��Ln����WVK�h$�����m��[�#�2C�h8@���1��rW�h���7រ�1���Idf����l��j�]аG���ϩѸ�}�lߜ�i¢��&���Yb�[T��,����Qdj���30Ǩ^�;=�"ɤ�s�E�s�n�\ay��x�P"�y�ȥ���<db�j�Rg�=�D��P�Nt�����L��]1�,U�yzq�s(QZX��m�\2C�M'R!�Ŝ&�G�c��+���DҴ��my���rC�i�����M�`�ڜ~kis��t��{�mN];�p�t�é*<�ȻY=y�~�F�_�]N�[����8}'"���Mo�<�\N�h�9��{�k�?\	�\�Ky#�ϙ�|���_dy���8�+l�K���Q�B�r"�ٜ�NE�O\{:�z�q��s�f��\\<��}�Z��U���������>W���7�ӻq]y"O]��s�_\N�����\y"�ٜ�l�ͩ���q����ͩKz��:���ˉ<���z���C֛��ͩ;@����uك��s�?�
�����?u�б��M�ӯ� N]���Ip���cg�+�/��������b�<��oN�/��3��`��/�/��1�/�K����՜���E&#>�f2%��O��3�ܣ���`�9U��1�`��'�_R���������g�i�9U{����[��΂-G|�k��Q4�&�Su������mC�����Xg�[��c�M�Q�ͬ�̅��Ù�!�w�#l��*�v���n����j�����&n����������߱}|F�^#�M���'���J"���I"��'��}H:?O�~����k�Iya1)#)�kp�GJ�������C��'4J�E��d�	�����SRgfN$����3I����o;�e���^�Mk����$*�w%r�1��Hd�pzrb#�34ggix���{���/)&����/]�_T�߻N�S��/��d�����ݻ���G      �   r  x�u�Mn�0���)rW��,���Ri�t��@"9��w\"���Ɵ�罙>|���Wdv٧��@I�Q�A<�*�co+�lu=�r�X6��l�.6�UDp�E0����A��]��x���	7��k���kB�BC�E�a�B [�c�p�>5�%GB&rX1Y�CD��Snd���޴ݖ��UϚ�.9�/q�̡�eu&r�Dd P>���pomSO
^Y��m���e�aV��I� `�q��n8�~a�C���<S61?�kG�Ia��_�{�cD8��X��0���We���Dښ�0�5Y��N�*5g�>�s�b�<���5�XbE����-x������`�c�r&*Y��^���1��      �   �  x�M��n�0���S�X�����[�v$5�6�^��B&D�E9�ۗ���73�}Õm�����3@hKdIdU*.r�]�Y7���8�C��y�ł�%�4�F�s�H6���yԋ�K�UEW�E�wc�ڵ�Md5����@�tg�E�UAL�[��Ѹa [�=ؙH�n婍���뎅h�AK�1��_�d\�֊>��;hs�w>L-"嵓���e��.��O����Rz�"�oe�s�C�V>`�@��Q�UN�0�úӶ=�\�	bq-����7�;�.$�˒�rG�iޣc$�`"��#Ue���5�7�GM�H�B�J�DMsܢiGg?[��yQ$΢���s��A�j��KzxF�͹����{HA�\#���vd���y� �z��cA�M�~�xT���ud�]?đ����SOd
*���b���~>�6��I��,���%/���d2�I�$���R��ͣ      �   }  x�}�Ѯ�8D�������d˞�� �;@6|�4��ǲ�4`�5�i�ӁSEYd���4�9��<�ᔆT.�rI����a������v��)/�N��j�������\㊫�3+���q�G��_���"7���؞�¸�wo�8�u���:�q�t&��-\X�q�;BH�7]F��	G�3�DZ�2��,y���|G��o��cf`�o���� ã(!�P�D^����uVt�Q�=y��?�@���f�;q��2f��S����K�6<�qND��e�W��с�;��K*��%���%<�������V�V���9��K��~�~�3��r]�Jf"3��G��N<xr:�e�����OI+��Ӓ��0��5�A:�%Mÿp�Y ܲ��/\���s�S29E��T���דD�j2�;'���r�	�[HX�5<���n�!���ڎ�7Qn5$=��9Y	?��n�|�cX�.rnaq����*�F=<���9n�!/k���ڎӿƨXN����1*���8W��WG^��u���y]��7|�V���k;.�)���s��!��T�a��S�+�$!�{s�y�v����f����99/���4�K]O��qI��Яש�AN�)e��gв,R�*7�AK�mO�J�e)�!i�('1�����Ӝ�ɞ�B֛���rN.nPA��-f��o����� �"L����2�#M�Vo�LGNd�8g&�#'2@�3�����939���sf28r"��2n{"�2۶#'{�ݿq������V����,�oa28r����-LGN^_މ��x�����ȉ���ȉ���`M�<19y�o���=�ٶ#'{�0�q=�)���ms���d1�y�2p���g�2���짢�2���9��r�8�k���f	�8�(��C�e`9y	Ĺ8���k�6��^ �[Ϊ
��DUYN�B���Ѫ
Q^�
���*��0n{�S�09يOUp�D8���#'*�����jp���n8���ض����IP�m+SՑ� #;V&�#'��}��`���,!tjAYN/9CP���\_�J˂�z���(��s�(.���A]5�3DyYP�W�!�˂�ü�t����@!��@y��1��rlA������v�8�0E��w�"@?v�ԘMb�^�Y�w������c���#(a|���Kn�nN
\m����b�ZP�S�&�ZG�A�6��:���bL-õ.��R��2�lK-ʝ�/MR���T���������������L�ɖ�*�L��lM���L��o*���m���Q�ٻ${y�w!�D��������mD��ܮ�i#x$��b�'y�w��jA�4v]1d���ʱČ� 
(ȱČ� ��/��!c,(�P9��1�k]�%f�%cT�%f����;d�e�US�w�B��)���'}��U��sՁR!᠟��-�������]|魹:E}_{k��2ā��c�SeJtT�s�~�]�3K��f��qf	cZ�_7����FU�3K�qP5�,a\�A�8��q=�G_1&�k:�5��q]Ye౼F�T�Yl�Ne�6���/�Ne�v=�+ӷk)\?FPԷ�)h�V�o�T�d%��75�F���t��E}a�i]�P9.$c'5.,c�w5.,c\�\ո��q]�G_�d�k���1�9�r\XƸy�מQݮ�.�l@��R�q��q�cAFP�3Ɓ��j\c�X�Ըƌq�F��2Ƃ���0d���f�3Ƃ(�^��h�1ܴ����<֗�i�cATP0c��1�ۚZ~C��F�>c�vu���1��/0��g����~C����#�ec��>��`V�n�K,(υn1L,��ttL�T��X&Da�x&l�6�Ă(�^�Z�.G"����y�HikAٕ�I3C��3/�ڂ(����p[S��ځ{���vJ ~���S�H}iA�q�G���&��b�D8��+��9��Y�2[AA��,w�TP�-��,�

�%��s�n�	eATP�mt�׺l�eAQ�ʖ�Pl�-1�,(������U��Ё}A��ĩ�mM(2v����4�-Sm��pL8��V��`��hR̂�n�$b�YP�O�z�om�Z�H�(�vU#���[ŉ�Q8p��[gA��#��,(�r$~�%6*�h�9���8v��������M��;���l��,�d����@)� b�YP�D�C�=v?.�ς��sjQ����5���gA��u�q��W&%��k�i3?��]�d¦�.�����Tߥ����Ϙ�t�ϊ>c��ҩ��Y}�N�H���tzD�"؂p��2R��Bx��m�7׺Ȉ�iA�}*2bp:Pj-��8��w�Td�⬾����qV�}�=^���?q9���L�}���dB˂���1�hUߦ{�IƸ6���iUߦS5˶�6���x�շ�T�Ĵ��M�g)Y���3)ʪ�᫵)Hr0���1�ւ�9ÐS�m�T��ض���tʉض���t̉ض���tЉض���t҉ض���tԉض���>s�$\�*�č�������V�}��2qc����2qc�ﾩȈ[}�MGy�`�%:: G�X�2ڞ=:!�P�ʖ�y��ƹ��-�ցRBA�Ķ� J(�ضD	��ւ�N@�Ѷu\�%��1���ց���%��%�tF�ض�l5qc�x����'���=֝&n��g���'ǟ8������� *#�*qc-���W&n�Q!YI%���+U#)3g�!�Ml[J	5�ւ�>���m�@)�^�h�1�����mkA�}�o$3ڞ��1ڶ��NS5�v��i�� �7���!n��G��� s��U<Ď� *#��ر��i&v����ldb�Z���L�X�2B��Rt�se*GR�����*���:nӶ&����F��:���F��Z��'P2�m��U�ķ� J�ϊ>c,��Pȑ��D	��,���k�(�c��%�S��ւ��j�ضl��m-��#���ɚ�mk���g�Ķ���Z�ضDay��Ձ�N�dbۺ?8}���ض��Q5F��q[��b�:p�b$��ۮb$����+�m��U�Ķ� *����$���^E����|>����      �      x���ێ�F��}��~�81�� CdyA�l4��Z�� ��Q*��o�'Yə��1G��t3>�cp2�LV.9?���/�~����/7�?|z�������������,9a9b�@�(�b�c9`�B9�.KZ���ϻ�ڜ��zb�H!���GG�V�"�x��~��|�ۯ�\�)F�#YE¢"Kѭ�"#�#V7�8�ǲw(D��!�~�Я�,�j@͢�[��Psҽ}	�摜��%`��a�b���<N�}�Fr3�b[P!�A�a��Z�m�Bl�܌����b2�#���|������JVT���4Q�dV��Yu�� {�>�6�e�ܫ�8�WA!+G��'�^�ܫ��x��o��I�=���k,[Z�r�rƾ>&�+�q�6ۤ��m B����q��|�����狻��*��������o����a(��e�J�G��)j��r��İ�{����z�7�`�Ȏ�H0��eU�|y�+܂=R>��c�c��[�����i6���@�i$f$�!'�HlKq��y��/������|8������c9y|4�<*����MT|Abkx;̀�G��GF$�-b��-������k(��zr��c9+�,,c�	?O̙Ď�e �-���6����m��m$$�U��e��}����{w����,N%���jC%�U	�1?A��q5ݻү�лQ
��л]z��ҭ�л����������XpX�X6P�T�zz�����y�e�X=�g�>���聘�^���,
(A�m�ǻ�X�%��>|��7_�o�{�����'� !�	�="�-�ŶWc�˴p���fΚb{GA�;��5�8*�!bu2�<^a"�qՏ�̛��fi$�g�XvX��ttđ�k��24~�QW�q��Č�6��>p$������"Z�;}s{���?����~��;-���X�/��m�T�L{�4I{/��H�̴�\h�Rv=p��P��/ZC쪔��H���q�+��
>6�����c,g,c�	�>_,Ʋ�ƋR�6��������}$��/������Vi_��]r�叛��x��߽��������I�[$]�RH�6�`fA�u �}�j�g]�:�Y��(r+1����Kb��ݕS���ᯯO�`�$,G(g,kG(�#�8����yg�wk�z��������fS��������|Y@���ӧ�1�T��^G���x"��#zF�@��f$>�����	�h.�d�Wt"�����Yx��{mB��VG��,:��[W*N:�n��پ��~$b�x�B���y\F�] ��	 b �K���}��+���?�{u���w��ߏ�OvӾ8ޖI>��f��?�3����g��f�>��g����	:��y��;�۴�T�{K4GK�B�&�����虚����+��HR�;�^G=��"ueaGAG������k.= �'܌�10X31�m�� �\�K���h���'�T$݊���#YEbґE�v��C�|v`�� ���_x��V-��ф��_��e��yB�N �,OaE��F�;�z�FO�NC��.r�Ep��^c��~ǉ�\h��7�b��7����N%by�r2�耏ƾ�<$g�������x*m�{�s{�h�E"4�F̚Eb�	BG>,��%�DF�y4Adё�Ǣ;:�c���:D��8=�t��q7����� �Ep|� �E�Xͨ�_��ު�)�PT�(�P��G��X�*P���0���vhI0�`���7��`�U�}��u_��������#�,����#z,uU`DwT���+u6�ڡ��&�����`���4  a����ϛ���^8Y|р� &j�XЂ�F�A�CЀ�11�N`����r�B��@Ƚ��lqbP~8�7e�'�Q��Y��t$�}+IE�n�n*!rB�@��F�Cm� ������`aP�f��..����N%�JX5�P�X�lcV	�IͶ���J7
�GEO�v��[G�w;��:�u����ߴi�Hݱb��H��a��S�����'���x� ����q#�_�������4����������5z�Y�Kf��&cX��M&����ZD�E��g6*����r��㜂Kk$V�ĘL&��h���H�U�Vt�<����[�*�u�< ���#D]��4� }'Ͱ�Ӏ�*9>���7��d��RO%�ע82E�\X��ދ�IC�NW���4�X2"Rt=�(%�I�Qp����-9��c���|j���kmbdё�"�@����.8݊'��U��.r���z�B ��39^B�_#�k��߶}E;sI��O�ܝ��W���qsws��z����$���=g���߅I�O���I~2~?�[=~�z�^I�)Z_	��ׁ���<:n3�e���~=�=z�ɥ@9���?�e��{9������ƕ��G�?mj�b')q$SFb�'a�m��&�i,&wi>��E��9�N�cʤ}3i?O�����&��n�>V���c�M���f*/h�."b���ci�f�z6=���k���`���of�<�o����xo������3�<��4��h;Eu<N�6�[C�g��^��w�?�\�!��}�r��C�r�����`'����W<�q�K���]�B�VZ�m��#�O��]�,N��:��9��E�7���l�a2�Y�N�_��~�gM�9�j�&�r���mK��㵑��%��.��@9㣳���c9`�	�w�,�Ѣ��mλ��r
�is����N��Od���?���	?��9ޙI~־������ ������xf�[�>�{O�f���:@�&��q��5��ٶ�z߿�g.����?>��z���U��b��ԂԄ2*EU��~�Q�T9�hM��tGhM}�bI(���y~F�~�~f�9�O�wi��s|�kO�7s��̷^S&����l��o4M��8i����
���fV��:H�%\j2xk(X�ELP ���Z�V����4 k�V��N؞!�r/A!/Pv��W^a�C����j����7S�𼛴o�I>O�o'y7����x?Y�z���?^/h���q�Ҵ�����4M��G��w	E��H���α��mZަ�Ʌ#K)�I��"E�&_x:u )�nP��K$�I�[p�ْC5|�=�V�����rd�9��}¾���_Ϩ	>N�[&�O�k&�e'�o��/C$��9��?��~~�w�����&Zs��Ѷ�2��I����θ�N]b�L�aa-d���YבM&�=mtFtڃ�H�p(�\^��,���H�K!09�۫�S�0��w���g��s����N�S������L�D��w04M�z�OciC�y|RGGB���IM�3㿝6�߽������qّ�7[�Kd|��\�8g��J ����8���6��Ij��ƕ�T��q��8[����c�B�ۜ�z���ÿ�Ud�~iȢ#�#=��ۃ�;
zF�(������ �&'i@?��@�d;�X0��~�P0��h��*_�x��xo&�O�cݤ�4���g�>v2��_b�B����_FO�m���hb�]�h�a �G31:9_W��hyD}�#��U��$�I��f`���OX ��7�����m.c �u���|������2��^�d��h18�ꐒV%͘z�މܫ��{�>��$d��eZ,��y��(�Z��:�t+FEb�=�HdD8rz�:�����|�6ch,��7���w���H��.�"{,'(���������%7 {,yPB[YT�=V|W���8�J��>C��>��������"u�`+���@��ħA��x�.���uY���!���s�`�w�8$�Jy_�/����?�s�%B9ᣓ�r,���� ��}���[��{���z��N�Bl�%Č|�mb[g!�b����<��S���: �d1:b��z,��Î��V�IG��� %;n5�_ ��tq�}�	��xlFj�PMHM�؂�rP�P0�Fݫ�-К�Dw�L�qК�	���q\SW���r��ŏ�'5!����R��7#EE�    3B��1Ս]����z��!�_��8C@R��_�P�ł�b닏��wr�,f(,y
˅s9�rY��eʥ�Hkcl�h�@@�bPkC@�!�qDL���Kg.�����,�HБEE��;"�.�=��O��a@�� ���LX �S=n��o?d}ˤ�{$I��#K�S��t4i�,]$K{���=R4ݠ�Βl��Pu$�j#�Hr���*;n����L��"u�A�~4���:�g�p=���ǎ�p�������3�ZX4���\�۶�h�.>�����|^���������6���%����G����'�F�MU�L�t=�w�u�[rȳ��6���X{l|l��1߷Q�}�}��8�H�A�:�T�L�,�']ok0��%���� ��	��r�Ղ�W-�Y��о���4Vy�=1����
�e�^f�Y�s&���\�!�UN5Ɲ�Ը�25����g�9_V��ą�n�n)0�Ud�-z�u_��tDF���:n�ЯH3���yn�j.��;����%����x7��I�L�y2�Y>M��x3[O?�Sy�z��z�A��i{��zU$��I�+@Җ��z��}����'5d�9Ґ�"�F�ʢ"�p�uDw�>���;ꇻw������ �u@ր~5�_ ;`��C�X�L� [(�K؅b!�e���Y�B����D'zU���KQȽ����^�������շ�@��5@s�l/a@sQ�,��EN�:�p\c��������J��x�U�"oo�>��_u�K�0Ǜ4�[;ɻ9�M��&�qf2��������D��&b+�謰M�Q�DWM��3J�S�����ۿ�k= �YX4�(@ւ�;d�eQ�,zA�c�g�x�˽.�c�8r%�#���l�_���T�O��χO�~sU��3C9ʖ�l�BQ��h(�R���
��z�ף�.��%�aw3�H0ቘ�`�keg���O�:�7��A� B��Q�,h@I5�hY�Q����pGC9����P�cx,�
|��5�z��Wi�$��-@9y(l<(/�}������N�{���6,!�)�b���ȶ��ȶB��l[��)���;|N# `�|3��E��@Q�8�~�E�,hi���\��t˽i����ѽg�X��88Gr��¾��������Z�ӈ�U«��%�^�F���q,����we�VC��z
���]Qѓ�w�$�w�,���?���B[:�'+�P'���ERb8?c@T�k�� ǭ�P�=���3�{��8��-�So��+to.~/Rؾ��������a�t�L9kd�{���! �P@��
h����1�}*K`��[1y5��8� �B���� �,��B�����r���:�{���c�W��Uc(g����R�_������7����2��,hHв�mf]�`"AC'�Y0� �� ע�(���H�Zb����p(����ϯ��)4��1p  �[,�y�p
�YHZu��,�b8�2�r�?nB�����z->>����o�U]}�γd�4��db�Hg-M:�\2m�&g@���dQr(o�y�Gi�!��c��)9��.ܲ~�����oy��ݗ���#yY��H^����^j�l�o(����BÑg�w�U[��y�xjM�bǰ82!1#� �m��VY�m����p���Gg3�����w��=>z)XvX�X�U�bDb[N!�!	�MG�m)�h��A��'�C�U��VL�ݑ�y�ѹ"��
Z,^���҅.�whP���8���d�/� �E���`}�5n t6e�%b�`9`��8�h���~�,�$�m�Ͱ�mB��Bl�!��m�w�6���oal7��BV,l���@Ҁ� �j�xͅ�^�7�@�x��ȱ׃��o�|C������ �>C9(����@9Z�yľ�,B�����mP�!4���Hl�{�/^���序����\s�}ע�e�X����n�vl�HH�@�m1Y�m��+k$�e���\��⏛O_n���))r�rY���제3�<!9xt6�n�����m���f,ĶZBl!Ķ�Bl{����q�ۋ��P�����|����
>�|�q�#�r3�b[�fDĶ�ʹ{đԶ�Y�Ra����<EQ��(�c�*����)��~Xս�6�B0Ag�07a�`ܰw�N"��Jw[<�����챌�,��������"c��Z����mIH�S-֧Ab[�㥠/���Y�����������5�;p*�5 (��\X���fҀ� A��b�;a�{)
��]Ƚ�S��$䂍������0��r�rݾe��C;��C��ȱyڷB	�uW9��m�����hf[W,{�ѻ!�HV%ܷۈI%�J��Ġ�J5�е�w�oAtM9~�wq��톶jD�E�3�ϛ�7?������h�:�r�G�A>-c�J�mh�!1�z�H��>� ���"^Dk�%�7���?�s�Z��w7_��u"3M�����X2ڦ�m�d�M:�	����	�Hp���"��Yr�ޒ#�Hh�I�������P�X��x�֌�C+�b�^�Ʋþ���}�#���88Gbۊ��u z賭�qX�Ek�%Q�U�@�6=�EcXמi�l2޲ ��+l�y�N`Ob c��
J,rX�����c�|�l�|����ur��NX�P�X�w���M�>Ը���u$�9��#�M�8�Gb�D�>�[�h�����E�~�we�7y��������2��d<.M�q�_?������սO���L�#��X\D�$��&i�p���"i;C��,�(i���k8�f��U�����\��%bϊq����&�T�m���k,�nԀh��6!!��b[).���Ag����ƣ�%A��&b9a9C�Y��-�
� 1���n�X,ٖR�m!��f*|������I|�3��=Y�nEw��Y�p	GNG���u4`�PH���,�@��~=�9X �B�q�M����n"�X,$gc���8���'�XV"�y�ָ�*���T��W�H�|�m<�֑��O`6�� _AQ ���Ul�n���>HFR����́��` �b�;Q��c�g^Ƚ"�ƻ=�⻷D�ܫ�E>o�V�/HN����и&�y��:<����%�F���VӢ5����ɸ��}1�}j&�@l� Ķ�"���1�k4�3�-�ϫz,C��[���z���ah���8�g:Bl�u\ ��#�{L@�w�?|��Ǉ]���5U����� u϶{lj1(�bTa5���UNML�����VhM�Bk"�4}!�5U�o�o��$�0C���#�<B�24~�Y�}{y�G+��r���w�q>�Ķb��#�-��q��H(Fd��w�����A�8���Y0�f�*�����i1�^�{'L��.�e�KP�}[�h%��r�{b۾%���o��XNH>߹��[±�嬄f�oh<�K��xơ��q4;a�b[���jtd�DVyZ/N���������~��,�k1Xt$X��2��=�za]/�- E�=h��8k��=���@�e
�i�S��	��;��`(���X�Xv�`<E���{ڡ�#�8򺑿�aś!��}�c�,�Ⱥ���m��U���)�db�B��יJ.,��83g��'ϒ�iz$��P5%�b�Wp���8.�~Y{pEJu�x���j�!W�r�-�|�xn|46^16���ݏ}����q9s���]��Ͷ�'�(Z�3���W�ݝ�vZt߽:������U����P�Y�$��������K��L�y_f'���5�Q�Hj\I���Ը��Z(*�TZ�ռ���Ƨ9����s���o�$?k�M�~2�2Y��|���1�j����ۄmb%<���o�&z$hb�N���9�ʟb(�P�Q�e(_(j��@QT���q��vHtqX��qc_Úf�^3�^0��M���5�}�RC ^Ea��VI*�u�*r>Q�7<1�Z�m�L Q��@��Ê_���<C    9��,EqE��T%CY*G7���A0���0����cf��f�bfؓ����ÿ�{1�k����'�@.�	��}�W|+G�Ķ�(����OT�b�3yd�׏x��y�ϘMT�T*�P�a()���]f(OU��(�u����R����lČ���aŏWn������L���_�~�rU�V*E٪{	�
O��R��U�R�-;��������x�(�kX��*W�Eg�������,����=��l|��%l<Y,;y[���!?V��J�m�Blk%ĶBl3b[��
ݾV�^�U*PT�����y�Q�	�JQ��D����r9k�i
3��xu�L��)�#|1̰BǙ��t�k�PT=T����-�B�	Y��c�Z�MF{�s�km<��C�p\S.�����7�S}��;,���(�>�R)�PuN��BQTU-U�:+{�q*̰�ǹ�7��q�*���g��;"�E�.E�����q������Y�Xr/���%�6�y��4i�*��]�m"RtݠjJ.��Brh�I��B��"ݢ�x|��!�}����[_գ��@QEE�rT����R�ۡ��U�a�c_�3���R�0Õw�T)1[���rTH{�#�`($�,$-�ڰ�٬����cΖ' עӨ/� ci�Db [�y*'1&���~����n�U*QTd�� �2e��,�#�>R=r�m��qÊ����F}��
3���z�0����v�@�n��o>��������w��Ʀ�%o3��bX2&��[**�B��gD�s�3ڇC�]߇�<ꤴ�*)9����r��P�d|h�o�7'ԝ�Jy���z��lQq��GU�j�PTf��"��C�8gf��q�*�x%�+̰s��d��_9a�Dr��/�%9Gr����yί-��@�o�Wvw\=I�*5^O��5^#�wJP`]��B�?3��T���P�k 婸�@���)���R��{���j�cj����xϠ0D^n�
�kb��O&~}�O�n�7e��ɛ��'��I�f����M�q�>z���1y��z,��+#i��[����3Dҁ�㩙/}�����}�e�~���������AE1��SQT$?�����^�ө�Ȍ��N�~��B?]aA� ��@�XP��Ky �_�XNX��$/P��O�yG�jmhW�b@�Gb[-�̼MG�VJ�f*D�3��c�U�9���&N��s�K����IޖI���tn��D�b��)��E��J�[�;m���D��%�ޏ�c����K�r�r�r484�e倏^9`�-�q&?F\ڔ��VK�m�9���وĶ�:<���o�?�	���[���舏�萰q��yL�+-=�t��R�mw��!��.E��,/���-�_��#_߾�����.����lqse�m�،��ؖa_ve3�^��rDr6�q��.X�G����SR�'|t�^���VL�m��؆D��m���B�n,���*��s,,/P����C��e�C�G/���'�H�Hl�}K#11�m"��VI���?�+�P���l�r���a�C9`ߚ�$������59�J�(����K���/>�_�IK��Ik��
��Z�O�e� ��·�m�hv��Y�B��
|\���ա\o��WS�T��a�C�<������\Il�r���J4qt36bu3��bh��L�ٶ��` ���?O4��"KF���%���/4ii���gD��d�D��]G�΢��T�ү!��ZK�����;�_�� �u���z���}�Y	��4��+U+�|b#��8�G�Ab[2��6������_������7����g��Y���e-�Ȃ6F֢ec�l�(��4�'0�9�qX^26��5�Y#�2)���`���c�����G��\������4�mX��;=�Z��(��\��[\g�xی$�«$m�;�fd�hr�I��Bg�wP%�M�u����8�6��Dr(cɡ�+�%�h�^�%�g?����_�}������]J�rBr<]�����V�ƾ�Ų��}����w�b���U�U�m����I��e,�rS��R�tS�0�l`T��o�#Z�M5��*�r��КX��D*bi�'����fӱ�m�E�:��,*�u+>���e1z,F�b���� ��C�HD�x�i��
@��(���9�K�HE��b���E~��@M����jn2jfS_3c����M���Ԯ��=-֎<���������]?��%c Ղ� � u����I��k�f�<&Ƚ�W&ZN=�B�uQ�u@���+�8�W{�o�ݝ	��)7<6"5!�9�GG�s�*�y��x~�]��q�����I�d*�k�9�Z��q��f�\���ë�������qhQ9:C9�Ărt��^q�+�a��%ĶB�>Q�� ��o��N"�}�a>�T�,�/#��T��r�P-s�*77s��5>������}��8�kj#�v���r�����>��Tc�@9F,'��Z�/���1;9_=�fېđ���V�hi�+V����9T�P-XE~�ϟ�~#�l�
-gX����q����:g��f�q�4��8A,�����;P��Z;2TR��@=���eU�1g�o�*�Uj,;��r��q5���ǫ� �����]�,�X^]Z������.�ш�FD��5���HU/I���Dֈ��#��w%$E�� ��~O�ޭ��j��핈�[!1۶.�ߋO��zޣU�,�{�����=σ�Z��a����KhM�����RS��Lh�l�s��w����+���Y�dl��<�����S���a�[c�;
�иfbm�.�Y�ҸVy�����σ�T����S�j��ԄՌԌb���sQg�@k�t�����8��Z���r�šfM�$����������~��;-��*��H�M���_��4YX2Y�&]�L�L|��J��	�Hrȳ�`֒�$�H�Pp�����ne�"�x8TPϳw��c�w�Cc�'�H�E��=��ZӁ��hM�Ǚ=�<�К�����K0���[�$�"	�kSÃ=���/ q�(:mAq$�'1Ga�#�(���,1Pb�;�i�w<+�y�Ud�<	���j�~<�u�U�rT��Á�ԉ<���5�=��֮�}�9{1J���9���f�㭛��d<��������;i���[=��{+�HL���WQ���|M��x������_��U,+Gc�4}�����	���is��D��}���v# ��@l+%̶`r�.f_<-���^�X�N|ր��pZ�NK�h.�:t-읰˽"�>,+���q�k���c�*����Ϟ�~��|�ۯ�\U.�EG��x�AE�:��Xt$�����whP8�¨�
����Jv`1���J�ť`4D��F���G-� �i�W��YZ��G�X��8��r��B^��ܫ�.�{}�a��/g�^��,X0���"%H�B��%hR/щ�!G(�^w9��,d��^jBV�G�d<ƀu����5�*���t� <*�f��dS�ѽ�8�,�:�DG�S��oگ72�BQ��"C9..Ζc���U���EE_oz��E;�'�a�� �a��<\�VH��M�5/�h �
��"p� hA�E4V�h.\�\��8n&�r���|,[l���qƏ�ƾ-�����e�%a9c����{�rĲ�w+�_ڒ
���r�>;�G$��X��}�3R�Q��4IT^�Vs����q'6�#��˽&��^a��Y?�����l���[?���r	P]�ZoG��&���m���*�Xk"��:�PK�_��G�c��
��>t��� g�j��\�� >j.�fA�kA��6t��Ng,���m�b�c��qH��^��z(���+C�J
��� �2� ��Ђ�Z��<BiFH
Po#P��,��S���x\$cY9���q��e׫�./{�G��HF#    ¢���5bQ�,Q%�J�q���+롛�лY���л��u;.t%���W��7/�CI����\ԫ��k4�>�C@�bZ=�8��r�r����4�{-:Nձܫ�Xb01k�Es��r���%!��ѱ�����=[֢g�Ю����g�!���Hk�zKk�i >~Խ�94�M����Bр� Asq�Q Hͅӂ<_̀�^��);�{�j&�P����z�m. #�@�֔����,i2�dJ,i2e�,,��*y�tt�Ȼ�zB%��#9�qɡ�HuFr�/�ˆ�"e�m�����aF��+* ��YЂZ�^s�Z���. p� �N������-���@�֖K�;-��^��i�]�\H�p\!�L�W�9H{��Ⱥ$�^$�2�Ct7��"��OI�3��8OIy��r�A%�i���=����w����8���|���ϛ����A'7��9~=���/�|���$��x?����w}�4���W�!�+�2C3+an�����5 hb�����~�Z��l��<���J,*�l�J�q�6�#��'C����v�w{z���F�������@��������#QG���ʹ��V����B z�~�D���k"�~����c��2���٬���I &�0�獘�A#��%YՋ�KT	=��֣�m3��z�'ZW���X�V���c�+��z*[|/^�|�⏛O_n�,��`�A�D,cߥ 9h<�rt��,�F�+��c�h��}��
��U���b�_��/>��wP	�Q��J$5�K2*aU�iD(���q� �[��z7���w+}�w@���oo�t�= �P�PTb(��2e)�Q����HU���*�*-:ㆵv��	f��`��J0��3\"/��üZ_���R��A���FĬE�#���DP��j.���f���*z7�f���w+���G�߯�r�V�^��J���G�`���|�
�J���m����u^����]m9�ؖR�m� D�̶U�W^���g�XtB��7OUDD=���P�T�q���X�����8hށ㻕���q�z�F�'@D�"�j�6�J���r��K�>@"�Ss	݊�b@�Fy|"�n׏���� �q|ָK��''�_L�4�X����&��B�t�Ν�ih��.�nP5%�Iΐ���
��JUPrT����y��GD�]���zIQ�S �zY�\�z$=�K��G�8K����8�����x� z�[�л+F��x	@{#��`�+`@ڵg���6,�Z�l���:���~5�pX�0�,��$$FZ��h��@���ތ�������Q%�GV���Āq�6�܆�}\�b.zEW�_�]=�u�ws<�e�w�||�6ԭ��%����������W��_����z<�ē�&K�P�L��%#�Q��i���#��먚�C��\�}�bv[rd|��k�<e�/������V%����G]���s��m�q��@�Fy����n�Y�+����kj_��\
��kHn!�Hr��R��HΓ�o�8g�w�71�@U�ǽ��8SI��*�qW%�E?����u=~�����Q#���9$�F�P�5۠V,�3=���c�+z���5`�+��kp|��n�Č���F�I�N�~�wi�7�����O�w��w�$��_b�X=I�JZ����<%��2I��Xa�.<M|�Ӌ�����￬Я?}���m<�ACNKZ��U��V��cYtDO�tҩ9)*2h�ޡ��++�~�/� � ��@V �X(����������^_�K~R,QXZ(,sX!1� �q)pIdA��;
l���( ��Th\���w��'h��d7��0��9�N�7eҾ������I�ˤ�����1���fz%h���&֥��U&hb��+L�3�>��+�ǲ���),�[��9�q�����-�c�::�'����+�x�K�f��J����gϿ�}�ts]��(��P�8�`��(���>:�F�W<����VL��W!��b��]�m��ȶGBlk|�߭"3�T�SX����ad
���%.S�\ݲbb�mQmo���n�a3S�01�'�)��������(r��Ǿ��)9|46^�<>Z1ng������X��HL�6ёm��ȶ���v�5z�Il�Tl��:�pX����VHk\AHk{�[��LU Ш�L�܍3<�K�t�Ҿ��P�[*��mOQEE����wܟ��T����ޯ�3��ڻX��f�`�5̰�;3�L0�	_�`��i?�%f�kXI�5ˆ�ƥP�8,G[8,p��!&&��V3�2�c�q��+����\0T'��m_4uc �4�k@� -���� ��^��v��q�"G,�z���f{�r�r����ѱ�a�)��)�p�����2[�ߊ���Ǫf�<UL�0��u?h
¿ҦQ#���hD2�n#��Ĥj���Ѝ��;�X����+z�_W�9�z�ڪ;�wV�x��c��2�%�Y#��I�%
��)�T�X3�h~3EKD�s4^��dg��+���6�VH�sJb�;X�5�a�ø���a~��4��q�*S�xi��u�����JK���G�i�/��r����4�[���z��o�W��ߝam���4iP7EסoɡlgP%��(����zgz�o��y&��~lQ8�SX��ˊ�E
˜�LZ[�3ߊ�ߣ@u�>	�h�.��x��i�x��g�u�B���������ˌ.���AֵYHв-��$�-k��Y�b����"1��,�Nb�,sf
���Χ����i�c�)�Չ�b�sZ���a�.9�X��8b�^�4K�/EO�,jq�����K��&ix�����d�m����� e�Q>�K$���o@kMr�גCdφ��'��7߿����w_n>���pY';�=��1����Ǥc9%�e�:q�lf����m�Bl"�&$Ķ�p	�-��=m/1�a8�-,�/���ڻ�3ʴMCۤ+��� e�Q��:΢�ϔ(Α�ʰ���H��9��xI:t���խ�k�=�J�c�n���P[( �� YC�,�׈ �E��rE_L�Sư�	��Ȓ{�U�t���$�Q��DgDW� ���X{��P�U)9T��:�sh���U������g��n>��~{w݈���E������d�Ꙅ\�ot�j��މ�+���=��r��G��\Ƚ�>s�:�i"G��%���Ӥ�4�h���t�hr?�+�l��YKr�=:>��G���@��pi�n���@�����\7���9c�^'��W<$>��N�đP�H\i����ׯ�AÐ�%�B۴,ix�tF.����{Gg�WU�w:�I��ZC�C���,��~F������k�c9a9C���6|+��8oyJ8���{�s[�],���F
�-�hA"2��*���A�;CzOی,ih�&��B��{��ih�>I����j��1�C�4󓈯0�y�A�K����_?���?>���kuU�\?�����[�����
-T���|E��l��l�y
��Ch(� ���b���ȍ
��m:��,i�8-���y��yP�G:���D%8��1�P�INphQ4�����[j����p�(@]�k�в�Z�j���/����	۫�hT�G�* �^�B�%'�^q�l���\_y�:7���t���h��w�f��4t==M�'���E��Uo�;����\���Z���Λ�/��{��$m�>/b�z.P�K֍	�&��r�4I�^W��l���:٬J�C�~�_�zݜ�9.^z���������k����t��#��d1,�h����O�q�@��ͅ�U^t=y��(iURr(gɡn�����H{u��B?�d�:���)�4Y��E��&�����}�zB���HU���O����٧Ɲv�欻p�˔hHб��	:Fς�uM��Ơ�4r,1���Pa$FZ�b3`!H,�e;�z��b�},N��%�*`���"'o��3����4t��|s ���ɡ�7�:�j�\~{\    ���ԏ�m�e��i�w��d������o�N��N�3�_=~�z�&g�ZglO�6L�v�vS����^_a}�����!9�n#�l�A^N��P�X^pb0�(��F�b�ۘw1{$B��,�m��^���77����/��n��H0ZtOmѳ�,��Ű1��R؂Ge�3��>KDG./��O�y�i\�z<�����_�>�������3p�O��#����b�=�H8zt�{��@� � ��h@����V �R5z%��ʀ�&d�Yd]/�[G6F�B9����4CZ������ ������S�x!4k@�@��i��+��b}1VҷƐ�xH�,D'zeR�˩�&!��r�r�8B�U_Ƚ��}9\�-�=&t$d��l2�u�:��p��A]iv�:V8�R�'3�m�K�k*x������^�<a㊌�kG�y�m̈́��6C�����hAb���rR��y\hв�#A�Ip_9�Zܛ��g �5pݎA��K�S2.6����\o�_�����?o��o�<(׫�X^�\�����]7ScG��$l�7�^�g!�Q�1�!�#-�B
�mőm���8�`dAÂ�kG�>�`yj��I���u�H0��ˉ�5[Pl��:�9,�f����~������@�O���z�&tl���7n�
�֏��1c��j�r�����+�ƣ��tNhM߄����B��pZ�"�4� }a����,��`0$��D6��Ƹd6ЙfK�c �f���0�f�=����Ռc+u����G��Ώ'D#�%
��X�
[�b#�e2+f����4�%�>.��4^@��B�c �C�5V�z���=kq�A������Yבu �Ls��hv�:f���Bh.!:)��ؘ�w�4�X�����$�\�"Mz���tt��)��.9���,��H�֐��C�Gr�'�[.�Q��pa�Ȃ��f�	6��ƸРc]���+����Y]ng���N3����cu=o��2k�#��=�]�1.�����c�blnBU��Y�:���g��Y��S.��c����&K�W$�?��ۤ3*��(�6�8-M�G6E�a���D��H�	�Fr���"9TAɡ��̇�^��T�,Xp!�:���V3 ��g���C&�Ȗ����U1Tlr�4W)K�y(�c���w�4����������<��Gr���ٔ9�p��bI.���L�ɺ {����$5���ƝT*���T��q�$Eĕ�)���=����w������������7�}��?����S��㽟��d<����c*����0�O�k}07�o�y�z��
�����J>6��,ׇc�+X�&�s��V\�oG�\X�x��,�x�<h��R�sO�& �D��~���8���'"フ�Z�Cݻpۛ�'���t$�H*�����cYt����3��$�w(�'�~�w�k@�wX �T�2�'*�~Wx�������w��mf�,,Y��3*tF��(�ڦ��z 9T�v.����̋�P_$gI�1\<��y�4�c �E2�-��	 F�'%�_�B�,���.�^��OȽ��*���k�Ë�ɗy����M$��MF��,��T�� g��T�;M&D�sL���h�Ρ.���Cl�+:��w���x��o�^���ԁO��χO�~sՍ\���Ee���G��*U��T�(���~�!�EG0�`�Uߙq53�l���*�_\!nʐy��D��%��3��M:�BgT�2g*�lf4��lc/��Msmй���\4.Ws���o�-��l�>h���C[��C[B#�_$z$�)�b�Bl�,�6���"��]ra�D��&M.4h2�d�sϴ�LW~?��k�l����n�"���4��"ɡNO�[������~H���?�å�Q�vH,Q';$�H�n#��ӈ:���K7��+�Lx}���׃_�B�VQ��^�Y~q���(Ұdq4I�̅%#Mf>�D��&Ó�y�n%��
5wh�I����e�C��Ϫ�d�-`�VkL���`�s�ŖH��sZ8���6�t�hwt��8|�+&�q/EL�2h\���@9�]���'�4�"=M:���,,����3#�f�Ʌ�N�	U��3ʻ�����\t.�~ɡJ�]�f���GF��c�"MZ�t,�x��=�_h�(�f�\!9��f�ʸ9�	.q\��g�e5�;q7�W��������&3K.M���&M�y��ӕȦ�z@k)9T��pdZ�2_2���w�N�K<�՟"M.,Yx2�d�IC�t=땎!3�{D�7���$�ri�I�VPsMz�<���|�Wywk!�@r����2io���n�9�ŷ��G����~ew-E�g �HQ��$�qO�n�P��}��+5��_��!K��m���<�)&NÒ��坷I���I���l���\B16�5:I{�s]��Jk�F?�_�.y���[�xk'�I�O�n����N�?����L�������^�z-�_��W���
ڤ)Z�煎.<�����}���/+���O�>\509��*RT�;9uPWwd�pO��*��^�AF{�N�P������DX�wFXH�/� �m�����7������?��agHвmf���1�`$A�f����Yб��؝[�Xb �Pj��K�膴�a� ��7#N��߰(s|���ߌ������d�v־���2�O��&�o����SO���f2��>	�i�&j("!V����p�Xq���6�``]���C]��xtx�@<e��ZNy���@"�eO�8��t�ejAw�����X}¿+�T�g�FG����#IG�p��#aE���3�;�,5�� ��
@�b�_X�7_��K�܈&��	K���ѱYӠa]�<&<�E9���v䫘�0K:�kG��=\.U����ި{����|�rs�$�����J�rZ�qŷþ3�3��r�24���5�W<�Y�v���bj[!|��`�l3G�;�U��:h]&AK�>�rhY0���,�&�؂�L3Tu��k�~[8,rX�����*���D��HQ����(*��0^���U�`����������k%�a�3��`�=L&��3N���w��K����i ��E4�=:�"]���4[N��\hJ�\��\���汋�������>{��ϛ���~��	N��@]� ��"@�P�3в���[\�={'l/D!�j �^w�a�n-��{-��^a�]ҪS�-��E����Q�2�E4�A��TU1Kb��@G���:Ff�95L
e�3�-��A%�E#�Sm��E�TͶ>�V�ևfC�i��+�\�n�[M�{��;*t��nh�ODV���:�
>�:¢cA˂l2�-�ec����n'����3d�(�|lt��[�N�j�֏߼���U.��`�^Xo �F��f-�O���Y��Gv���L�1�<���HTOb`�JTn��yG�b�H#@�Zt�-	�ɸH����X,x��E���͎X�,��F3�u,qh[s?�cT�L����*H�~�Ɛ9�6MZ:�D�t���H�&�Q�3��]Ϟ�Z�C��D��r���CkW�W(������7!@WX������i׎M&�`"A\�W��h��n�ttk���N��&z���]Xf1``��Ƹ� c��E���Y�d�l[t,Q�l�{�5���#�q)�[�o�􁶙X2y�t4iY2��4�z.t��H�u�!�E�C}dW��Pm$�V�����:��r�]91߿����w_n>��t9������\�C9�G�i��X!:$Z ���@lK)�q9T=�,K��>I�H{O,��;M�fI.����h�U��l���V����82��օ�P��1�y���������"��HԑEG��X1���qz�V��@����u��~Я� ��L �R�}	��ە$#ms�I�f���&3K&:�Dg�8=�SvE�^T�|�92>ؙ�:��K��T��o�m�0Ǜ<ɗI>��n2~g'y7��I~�>~2_Kĳ�C����DmMT^�    f*n���6QCa�X��i��LĹ���3�N����Bۤ�%�d�4Yh�%#�]�D��^E�\M��,ɡ�4w'�js�,��<�/��~��|:��������_�ye��Z����8����#�=�#����Y�MI�m+����D�=I����n�"=K�= �N�6i�Kb�H��t��Z�N��(����X{�6�4�9����p�[�'l��~ĲŲCr�O��r,�hZ*0���7 9�вZ[���=V�� �mk-�Dbj)ĶBlkܜq��=��Hϒ1�d����IWi�4��{@��]o��kϐ�y,�=�i�Q��z�����~����\�:X���*�졚���Z�\?R�	���th��WT�9Rh��]��y�5�Z��5�ZS�R�j��$��-2:���MKg��X2:N�f�t���͓�CUo��H��f��us�ѸR?��/�c�~0��� �
�88P]hA�.l/Hщ��ܭ��{��&)�@���<z���Y�>7e�Xh2��i28����N���n�S6���f��s>q\@o>� 82O�}�|M���O���_��9�X�Ѥ�Ʌ�nhҲ���BgD۬k���r]7��JA�Hs��P%HFpp�I���a^9�/���&K.�ͅ%��IG��%=g�m��f+Lp���V��P&��׹���CI���bj��?�Yб�eAC����#��g�X�ܟ��� ���U�Ob _�4p�"gtCb`H�rz�H�wc�3q��s�+�MO����h�������yT�s��`%�����<�"8�v���������z0,Yc��̒�Y��ۤs�tF��-C�J�z�ܛ�����hV��y��S灺2���7����e��i����L�f2~?��}7k�L�7O�X=V�.i}�	��y|$n��St����{��1�~{�~��k�rƲò�2-y,',G,+y�Yߗ�/�=vӂ�6f!��b����3���{I���/�߽:]zwwn_e���zR�Br���y�۫�pɱu!��}�^%5�\)�#E���Ը��wJR㾋QZ�W~\C�ѭ���:݊#���@|�Kׯ��!�V�������0�4�kA��%,(u���'ω�8.�+��'��p���u)��Ⱥd�^vC��V5����5ƫ�[���*��u�P�l�x����w7�����.{��b����� �f���E�BE-�ԫ�>��˽�܋��Ų�r�A�76��s��:3�.�����Kp��
��-������lӷ���U*S���q_�+�J�k��	������q�)ߖLP��6�X,(��-�E�X�Gkr��x��[�BH�Hl���DG�T����EKq�I�"�-�=��ү#9�~\|�o;�4j�k;�4[�~5��'�e(j\����${���g/����?����(E�PN��GN,�ȕ�X,�F�+�)�hd�m�8�-��:���2�Z.�2�g	.�\$����s��<�7��f2�L�%�o��L*�J��5�\3�U�<!5�T��T����,P�@-�4�"u�jDjFQ�-׆�7O��&��ʩ����ZS_�5y���8��Q6��*2�0	��\"�@r�%2�����%�w�G �����Uj\�f���j�J��R�C��N�z2���G�>ŋ���w���#U�.q��)��L�f9�+H�
�I��4k�h�@�}�P@�q7���Ɲ�Ƶ�(�(��^n����s��2�q�e���r����#��!��NUj�C3oUj�n�5�'�
OV	S?o�ޟ�I��6�(2�����&-M:�J������L�[r��P%%��-9�mɡ^K.?i�3��1����D�͎���r!����u�$��މ�cr��A�Ƶk�%T[5^%�}�Jy��UPv��W/��z��:���i�4�X�-O��1`f������c� ��JBb�(m�X����3�T�&�Dr��
i��'�w�|@����^��L\��5^�}��ע������RPq��;��	�ӓ�c9���>-Y?��2�,Y��M���3��@��{dQp�[/�=Ts�-h�I{�62>�/���Ⱥ�_�9��Or�����8?�"82ߔ��Yg��C���*5��\iTj\�y*Q�x%5��T\�����z,;,+����O��>s,G���V�R�^Q�h��ڔ�ؖC�m)�϶Bl3_�����7��$o'y7ǻ4��I~���d}�d�m��?����G�.i=v�ů9��/��5)i}�KZ_/:�mBL������0���$?����2Y����d<u	O���\}�΋��h�W;�d��H�*M�PD�h��������ך<��4��ɒ������d�n�����Y~�>D<͵���� i���J\�l�)�N�a*�,c�&�WV�Ģ E2���q�Q�\� I�d��މԋ`��eV�(d�7>:᣻KD���b�+������$o'y7��e����d<&O�;���|���v��t������]ֶ���
��q���������=���$�����!�S�r���G����X1��W��h:��Ǌ�(�N����Y�:3�&�2�{3Ǜ�x�$�b~���d�v־W�f���V�m�[�i7EOeI�#�d�+����öx�/,[(/���!c�XN8���8�EɻMl������ 1>V�l[�fn��rs����M�v��a����.��O��f�Y&�<��ޯf��4�֚}5M�}j&;M�)Z_����Km&�qɤ ^�P�/4u���m�,�U� ��5@�����	ӫ�.wSr/<!/X�H�84�+.{��<_���?��9~_�3��O�S&�9�N�f2���3��'���o`i"�fJ��2E�)Z�asCWp�&�>��^�&��LG}:qX�b����%�i�R���"�(סq?w(-Oe	�2�n\�*�z��z{wb���>Nڟ�'�eҾ���l<v���g2_�o�,K�7W�vS������e����󻋁=:\hв�!�Ⱥ�����:z`Qt�[b���8�����N�)h���R�hY3�Vl�9��&y;����M��o&�I�nҾ������*��n���Ns���8C�)��Ҵ�"k���ż�X0��1$��=k��I�Omѱ�ql2�(�wUD$���"�-O��0�2�������}��ݬ}���o�$?YO&�e��������n��ϡ�9��:h��4����ǭ�qR�b��zO�Lq�I9[�9\���a�S��$�p\b��ݭO5
�I�#�Ը����I�;*�q?����Ľ���<�/�|��m���d<6M�f2����$o�~5�b,MԲ��Ѷ�<���4��#�u��=O�S ����ۿ={q��S�>}�?>}��ͳ��|�t���������t�c�ϒ�g߿�e�.��[���=��37p�iN��ZE�����x����w|}�b>8�Nchx�&���iB������N9<�����_�>�������Fs�� )*@Y]�ӽ�
\�4S��rP>�-���r��_��o"��uu�Ue�@9o}�[Ur��N���a��ĸ��s$nm��ɴ~B�Ӌ���V�o
����M����B�8��o~~�+��S���2���ۆ)���[�hz['<]f��֔���
}s{���?O��n�N�?�Z��ӈ��Z/���-kE�Sֵ�Ӡ������z�,�k��jpuUM��ZJx��|�+H=q;��?���Ư?$;��lr�9�뤽ޗ�Ae���f/_Y���z�~�u]��n��p>ŭp~ˬ��N�G���z�W~.�^�SO�Wh�����$��[�֟S�^F�
�'b-x�2��)�)p�z��S�h���֏c0��,�1��(�XҦ�u,��ر�8��N@�c���ߚ�`*��X-��]<m�O�i���j�ڏ�e]�ۍ�m��5q�E���W>5�]�U��:�xql�K��Pt�����<��>-KW�˶o̫��r��vͫ9��vPN��D_�W�oA�hZ�lm'é�'z]JA�Fg�ۦ¹�^���]����<���    Y~<o�fւ�m���� �#��U\/�����tZ����_/e���W^Z�ۆ��`F@�ҫ���4��+�����D��+W��\'��W.k=�3},v�z��%�=ԃ��{����L�.c�������}3�v�v��������:�u�_������֜6�'q�����`��q�n��_i=齯�k|�Z��ǋ��W[���Y�_c��9���ڸ�Na�.��D޿m�\=O�E�Z۵���ث~��C o��k�+pe~+QZJW�|�Sj=�m�vU��n�)nCo�kۓ����{b��lGnw�W�n�7l���Jܖ��j�Y<�έA�tw�ʝ���?o�O����^7���r��$U'��6��r������Jm��U�{��/n����(g^x��m��2t��}�iS�.ѫ}��($����L�8z��n�r�M�W�k���,�}�Y�z$�=�n��pӪ�nN���6�S��ut�����:[�#��ޭO4֑���o.����+���n���OI��f�[�����ek����홣���6���7Dvj92b�-Bv[9�N�|mٺ�׺E�1���h\B�{��ʭ˿[����Pۅ��)õ�W��Vp=�W��}Y�.>��G��Ul;�?���a�vd5�^����{�^�Y�_7��	��h>lO����Z��g��}�=�guЅ\oM��ts]�N����ݺ6��D��-�R�f�*�A�c�nN_���vۨ�8����9�������uU��dh.o�P��ڍ�v�i���v^�t��Y�vz�&[S�So{�W�V�uEH?u��v'm=[��q�6y� �Sik�vmb�:$O1��|�l�S���u�E�t:��ö!��j��m�q�q������_��WN���o=���y�<����
Xv�kG����Yԗ����pܗ덊I�����Z�ّ�~������͘1�g��Cp���q��iտ����zہźy~���:��JU'Mg�������xR����d�� ���^I֒Kd�ĺ�&	�Q>$��k�� ��o�a�YI?�<jA���݇4x��3dB7̜ å깸����#eq�0a��r���[�2=�M`����^D��q'������h�;����̀�4R�\ʵԍ�yo	r�$J��z�K"�U��7[�+ٖ�h6���\;�ٴtɯ�!�)��~�Ms���Hc�]3{�xX�H��[�̾{i�{z��$�2����g:t�qm��}����ino�CIԠ�Y�K��$�It��&4|L�mY���0����֗�pdfi
���Si٨���1W�ez���S�
T@�����T@cH��;s7I���~z��(����.N�I��g^����c!\��#s��7���M�@�w�AĎT��8���B����m�#[�����������&wؒY4����S�읱�z�:�&�]i����1��g/j�Gc$^� �/��Hu���o}��]�qÿ�	�k�2��ۢ`$b�F�����o������oG��F�X�$��%�0th5�M�**!<;����S4�(a&���
Gz�k���X0u?�J����Y�Hy:,��,l�����3�8>��$X�t�8J�i��� ���Qs> �'�K�VN'�k�;�N�˫G���3rZy$�a��KGY򔸾=�ԐGO5��n�8�m���yv��Zy�����{�	2Ɩ�ʼ�iIz��0L�N��@�֍���� ��o����Ul-�^7������ڌD�#G���ξ:��>]�
N)��X���O�ڗ��|	����Y� x�|�� �����������Ų�a��\{���NXl<a�wH,����<T�,MOnDr� �%�~h!�\g��;�by?�F��a		2/lH(�fC�n
_��(͜��0��h�u���2��fz�#E�LA����W���_�D�����?� R~~*��8i]��k7S���T),����\Ve-�}*g0!��������!��e�Ǐg���~��s:��?mb��_���V�$���SyM�M��G�c�eƐ��1����	P���c�,YG�^���q$6D��זM��զM�%�o"��aZr�"G�|���X���e�D��A;��xx˷ۨ���� �����*z|T)�0�V�D�X.�(��<L�=��l[nv�ݞڥ�}�@�[�K�#��{���[H��R��t���׏wO��U��u�D��рazd��O��^���K�Ի A\��4�s���̥y�#�,r<z��d?r�<]�m���`�^v�\O^���xr��)h�|=:���Yޢ�&R�f��!Z#�D�D�Y�ea�7ӟ�¾��?$��d��FC� Zض1�e�'��n_壿$�5�q�������C%�⇫��g��N%|��nk.���	|��������{h#i����xr�-
� *����N@�����i�߇�bp[���?YN{<��|�>�5$����s���җ�G�5=����*	O��u��!2��{�;���Gޛ_�MӺ��n���Gj	�U�9��71�����Ks[�28����f�����.Oǳ�2lwT.�0}Y�X���׃C?��w�g�۵�S���X��en9w`�E�DX^f;�!��!K����pA���|^��Nr��3V�a?x7���v'�i���Eւⶾ\|+�o�y��~:z��{&G��/}8/P�)v�:x�ҭOx�}xzх�����|�$�iuI8�ƤR�og�/��[ܹ�9	7��7�_�����2<hi�Ig�!X�e��
7B��=�Ȼm\����M-�����o?�+<�6��<������A���&|��2�[�;|Q�0���Ҿ���_��c��H�g����b��R�{ˇX�2T�������4�16.��B8:k je�\�>PUjNt��}i���=4����dӻb��#r��}AN���0A#���U��m��Dz��gZ�[s[{>,�1�c{S��P�ӪlE��eĥfN>M���#�ܿ^Y����o$|x��ldg���dq��V*�ElLج�q]1)��JʲI���P^�����fu�x2�8?Ղ�G6���.2$W����5-n���a�lq�e�K������nm[�R��i=:�B��\�yidgo
�IE6�1�N/k���R���aHL?Ц��!R����;\�����0G���-v��7���cj{L}��6�E�-�lc�K�Z����m�!]��"L#�EIk8����$�J����X�>�X���jpU7wgC�}�\5D�Z8,!��^�ӹ�%b��%�K�֦(ZFQ�vA�
Q�hM0��ւ�"{M+�ܓ��0A�J��I�J#�i����+'M+RIӊ�"�Z�ZU�흪�	�V����V>EU�<&T]k4�ZqAQе�+�V(E]k�t���k-ot�t@�t�8�
�V�C9�Z��V�U+)�ΪV�'��VZ]���A�ڠ�۫Z3�
{Uk�5�t�P4�|�w�i���Q�ꃠi��݃�Қ�h���Qn=+��A�
��AϚ�YϚE5k{�o?Ԭ�^��YC���7oU���;+Z� (�V���h��GY���Eĝ�U׳���տѳb�����.=(Zᖱ׳��A����~�YqM��f�@ճ'�Y�Y�
}�^��,j�rֲ�p�e�����@ մ��"hYSմ�NԲ�Pg�3�eG-+߂<�Y�~V�b�>�Y�'�W���'�Y1jVre9�Y�{?�Y�.A�Z^�Y�A�Z��g���gŭ3EϊѢ�Y�+jVh�55+v퓚��Y�
=��f�y����7G���ij�fӲ"��^�
���e�"�kY�Q�
��Y�Z5k�1w?B��YY9��Y�����[��Y�ƒ�g-�QZ��nUϚ�z�dѳvE�J� ��5��y��5�Ԭ%>J;�Y3t{=+�'U=+k�T=+�����2U�����z�bԳ��u|ᣚ�G��uw�T�}���΢ees��e�bOղ��%k1)Y�B��eEDȣ�5��H[-k�%����7jV|[��A
�jV^��jVV�kjV饩Y��F�# <)�9��X�>W4���G 0|�a@�%�`ΒMp�(���,�\�z�a    �rS�
"����Oui�R�չ��a�o�%��9��H���x��h�`=�珬�/�pk4j߇=�[]0�8vu��,}h�ұ���x$^���9�<0��E��dG�!��'AK\�J`)h r�FKB5���qM6��>m�5����AK��6lN}�t�� ��ى�`4�s��ZF��A&�y��9�D���&8��������y����"FMly{���-]����C�����u�N3_�kU����S��R}Gl��Z/��/��D7R��0%�����H������x�<�;�e����9ͫ[E^�@`P��d�M�55G7>=1�[8}(io��������{o�E���N������-L������-��v�%��fq�[�a��~���#�����n�8�94n�k��nw7��x�7�m��Jp���n�~g���MYu�ƻ�7�^��o���Mgtm�N�sڿ�q�����7n`6p�7������i�=�j��>��O�o�����8m/�^�a�[�aO�<��T��-�6p�;9l�ζ�Ӏ9l��H��#_��7�/np������|Ⱥ��u]�ް$7� l��B-���r�}Ma'�i�n���P���G�6�W����Cd9��P�wp8;v�*��a�?l�~}���7�*l߸ dݾ}����}#Z��}ߚ����H��;J��l�o�����Q:���(���y ��QܽyA���|��{���~�VN߈�-o�)+�o��;�B����i�~�n��7�{7Qu��s��wgy�&��i����w��{�8m�.�r��H7��]^�i.��nCbܻ�z��y�n���z��q I=�遻�O�Y�R�зS~�J��.�m!�K/�4>4~�h�/d�8m	��T-���]���^��D9�Cle?��g�ޣ��;o����O���8�0�vZ�Ρ�����<��$��9�Zt[0�i�a��3d����Jrk9��~�=��Y�1,��3q4��=�?X��j�vBE�����;Mau��x~��P��0GA�pHS�La��o�pj��`������f�m
c���p}��=Nazz��^S���z�<�ql�Na\>��p��9�Q�0{w�S8M��4�!��3��73�E��F+�	\�	ܥ�����+���{q�-X��Q���J�go����X���$�O^/O^��K��y��f�:wy�Q�nz���g�dɛ�=����Ng�܍�6w[7m�Ͷ����uft�M^�,��^DL;�^RQ��/������y�&a�b���/�A�	\�^����Z����s���]�gp�gp�La,��)�x���� M���L@��`�{i387�`�}�q��o&0�^'�ٛ�g��E�#OuĿ���������oOǒMz������/���@p�_���=���¢q�M���Y�"0�$���%����6�����FZ1r���[�I�F�yR�8�N]�h����n�a�ZS�Z��$��kǑ�k�����ٌ��������!�OnIb<�,2�Đ���ϑ�1
.ß)�*��Q�1?��=���X���c�)��z�����G�!C1����T%�ԉ��#���5J�L"F�1m���{��&"tGлC��/@&_hE�Հ�w2�в7�~69KH[��Az�"1\�.1�'��P���!��ک6��u�KdbX�� �1ֱ�i��b�K�3�~ה�?�ܲ��P�:(0��r�\S�@s,��s�Kn�� 1$<�8|�����׈?1��qxb��5'��>{����X�J�Gp��Y���*Z�y<�+��!3aj���ֈP�4���9(�xrT0��E�p��[�$z��a �~�D����щy�?1����⻘)b��p�f��s?����@da����������=4��UFW��'�K�E���,t�R���U�O���u�Ik��D�ù��p~��z�gh�h�Y��"�<r�J�o=�o��C��3=cX�����=���	��|,����X��ėc9i�/'y�]咽�.��5��9��&�C�b�Y{읭&����Z�z[M��[���I�!z��$1O��.)KeŦ3�o*�Qo��9M2�PN�����j�3��R�! h�:���4ʟ�5BV,�w��~�����U��ٸ���H`>h��ػV�I�E��j��8Q|S;�T@���#���\��KT�A��ڻ��ϻ/�f��C�o�5l�C����!ܣz�.�������!�q[n榇�{��C�/��c��<V$��xx���T���)qP�s\�d���r��J~^ ���)��=����ٔ��!��a��r��%�~������k�K�2�Uy�uM�X��5�;މ����sH\�i:����;k"�T�]���k�C��Z�� �p�m�ԇ�0�.1�Qd��Fl��.6+���R������[��/�+k1�8:��%qX�m��}?�4��Z^I�a*p���O^ _F	�>P��l!�4P�(m�m5]��ͅF��8X�5�m�f���b��5��Kދ-T�`iD��F��8>�����ކ���s�Ո=�Ё�	{
����B8�bd�)���Q�8��R/�gq�� |#��� ��編q<�����x8^���?��4�[��ފTLwsO{��.
��
������!hش`��C4A�s2�Gq�K 
�L��Z���{��g�!z��?ܪ>
E��иa��_�CY{���.�4.=\"���,Ğlk�J)�x��8qI$򨾷���Z��	I��썜�m���>U��aoo[���J#+ȩ�v&��cvָ��u��ƌ[�	)�?��R�㌱z[��.a�r��v�P��ǯц���/�d�1�k���c�X&��g�|֌��w���t��;��hoƏZ���=�ʗ&B��M����?DD�f��qf�)B���$�A��Zp$�ԵcK�_ی��e)�����}��%A!�����O��C�Õ�zW��C����Wo��I����x�	�oy�:9Z��;}�`l���ΥB��,2���6�o�Z��Q@��ɱr�g����MsNc>�.�
1v+�k���Z>�<t��x��ʿ{�Ԛ>�zab}|��ivz�P˿�!��W���I��=C�:�����F^G'�]�R`ȯiD�F9J��9I��a���>6���5�_>_=��O����뫇�P��!X	�~ة�1�j2�*1��D��U�"�֧;��Eaò��ć�²�|�o���h3?�����o�����]��ބ�5χ����$k�
2��( yG:#ײnj`�J!��sR)�S낀�'�5%���H4?��^������߇�[3���/{��˿y�F��S�# I��)����,��T���־�U+x���Ay!�SzRʂT�����W�_=���m~�/!��LY2��A�-��-a,K���^�w�>#�}i��N���BaO5�'n/$��8O�q��Y�Yoß��P,�>3��ڻ�������!8�@��?T��a~�.��}����۫�ء��Cpq��2?�SZ|9"�+�}>%?���m4t�hh⓭"����D7�[VM4��#Z����Zu����C%�Ib�^\���V��2?�cl���>��MԦ���.ŗ��̲�	���1#����}saD|������s���,0���-0Ga��s���ͽQR��t�8n8xi��qp�ݦ���y�ZKq9iXD���qP�A�9Ӯx��o
��!>3�Wel���CpL��:��}{���՛`�B�p'�p�1�Q)p�5\�����������{��^�2(�[��Qh��$S��,5�L���|r[�)���Q�(�^l�qJ�0	�L��(�]J��)}H=��/6(^��p?J�{q�+Ucyj�R{���]m/�{�k��%p��)j{q@���6v�;��h�e&δ�s'���u�w:3P�g�]P�=�hW�q�#��q|�l��mÑ`,x�,�3������X���T��0��{���%!�_P^Vہ4H��o���2�TA9H�r?���    b-g�U4Ċ��2�F�Up���Jf�So���K���'%���D��jE�ܕ��
�7���Z��ȐS�Nٙ����p��	n�@h8�q(����M�оC6�#��o]�g<��ғ���֟���oI#N����!�un��E-/=2!��@�E��t-�׻<1��Ղr�w[g��Ms� M��H�׽�m�T���S}��޹T����.��+�^��c@	��q�`��Ӑ��%c�a����}]���b���>�� 1����C��xէ�יB�!���G���uM_�P�� ��u����~�����wH�Lp�����v�dU���H�vZ� �$&��t��Fg�^l��`����^���Ө�״ERa����E�C��[�k�Jo�j�M�c�R5��֓�pp/z�s�A�R��8�K>K���3�	����U*�����q0i\}%��U�~9>Ɠ�=�A�~��]�~	�街!D���_~ȋ��1��fP�||��r�o�ix��y��}��j�ӋBz�	����.@���ъq�D������ACM2��^ri�5��S�k��I��V�H1��R�D�Ҫ����>�S�LAsP�L�p6N&�Z'C �T��R�0�J"�+[6�u7ժ2ũӔ7�sۣ,���l��3� ��݋��o�t{2�y~ ��C0Ąwo�m��xh�����{�0�h�)gp2������j��@d��I��3��Tޭ�-�Ej8�Q�'3$ц5QAI�|7�a�5��af-A���,�!�a3�H���ED<����a���;S��|��j�p�#�La{ǘ��(̼ZOL���ɀ��Khf/1���L��#��B��$�3MB1d-)b1��_�� �a�L�%%�v�3�s���Bh�3k��P����-���&O����`�O�)X���e��LG��4�7c�I���#�Q��Q5ݴ�T7������!瞩�6~���4先ՔR�[V��u���l�Ym��|O��MӜ��yW���3��[���W׊��wҜ��=�ja�9���ۭ%�O�;z=�ՙ���V�§Q�*�8�J�8��35��W]2ќ��e[ـ�	漿�Vm�.:�h��}�U�mo*Lc��%�ۆ!t��Vo�|�՛7�M�����3�I�2����.BYXҫL=N@g��|��%+��ن{��8ճO�X|̔l8�Oƺ�ҋ��LՆs�o�aC(ƞA'_���; �H�B6Nk~�Dc�cg$U�)���c/<3�#�I翋b9?�jO@��o8	�����8��\eD.߅�dg��*}P��"C�hR�x{&�]� 3	��Ĕ�a0�jwrr��v@�~1�A����GpW5.�h�Z��Ԝ��)ˈ`���"xi�8�bХ����Đ
��w�O����|��S��v}� 4Ԯ�.���0Abp����d���B��R�L��A�p�*�B����R=�_�~���=���al��)4H�����T���2C���$����ȻȐ:ʵ��m {��ϳc>�09KLD�"��V��.lNdh�� 1$y�&�֡&���j�E��IBp�g��tS+��C�˧ &~��f�X?0�!����`��n��.Vy E�n��UP��4=-p6��LӇ�"��A�
�(���%5HK�<3yVSL���@��1��1E� ���$�V��k�r��>O߅�HdXr�b9���$11Q��.��r/"^L�!���Y���Ny!靃�F2��dj]k�����I"n�]'&>��C[V��"(������9p`��'�J����� <�V�<�+�#��S���^�f*a��v_����������E�Is���qb8&c�������������7�9�����C�1��uݍ��;<������&rb�1z5��:ș��Ȱ�5�[]�[�Hu*�4c�k�]��,w�?�Qr�[���Vl��@��Jwb�@�|,'�cЉi�9vb��Ι�[!���]��'vWl��R�pD[EHۑ����P��e|�5z��%���v�����ļ����{�MEb /&������]u��#C㾈m��p��Ė\{��,��zn$�j|aW��y�6�vM��8<T���7iįO��9��5��v�A��&!�����r`���d�Y�b�Hk��\g�;�ҧ@N�$"�}�*1�"�I4�=����E�<C�%0U��S�������ݔ�qPʦ�qJ}/_���G�7��B{/��u�j�)D�����L��q�Dᠮ.Y�r���=��j��=�KԒ],�!�%�<��9ȏc��Bv�d
_��"CQ�2�܋X�j���P(Ki"y�v�(2�t�(:T7����V��r�v�A��&�a߃�����wA�����D+����"�����\�!�]'���k�n�֙6
L�S�s�\��^zSeㆀ�)3�!U�T2R`#H���$���^�� �w�V���q��H �`udT'�3I�\��ˡ� �ױ>��kC�R���A�
尗)d���F�(�h>�IsC�,ST�P�&��2)����8�bҏ���o^��� ��;��fNp��k	=2�V��l��h�6$�|�XNEP�L=Ց�.6=˶}����L4�iG�T����F:�����VBǙl}º�d��邊����"ǌ�H�X�NL���%�U�����w,'<fө��6�c��]c��?��ou*�98[ʵ3�:%�dȠ٦�&<p*�b�93+�X��+�9e��P�g�g���li6J-�>���4`����[��/I�� �6�#C�H���i�ՁsKˡ��U���b}p:�b}�{��.2�!1�t�~*� ��j����$Lz�nj�_�,0�塪+�f���qt�/�0���Cp����z���wm����I.9��h��bA�O����fC�{�@RU�3�������b��*��L����@��K�9�D��CN�9��Z58��^D�.N�8FoP���J�P��d@��\j������J����Ht�f��h�l@���I|s�x55�)~��Cr|����5���W���X��^�~�H
��$�$m�a�U _�RW����N+��$#5k\���O�R&���O�v@�4Q<7-�Ղ��E@�`�+OcK]���֟4��ܟT\j�(�2�rr����Ib0^s�A��(�Cm/�hckE|�[��l���S9����w�D�A@5���>V �XV�E�`��*�f�Bb�iQ�#��p
2M�]�J�Nzw�2B�J}�B��h!�^�Զ>��>�-qm
����R*.@�T���Ρ5�:+Y>G�u7���?8��	g���6�B�퍕��Ն�}C>9�Y��y-(�pWP���hy�ҚW?�>d
�Rw���NK��ή���1�v�hj���ѬC�&�=!
�E3�MtDMr6�l)ȶ�`�In5��H'T�yT~)�F��\��
�X���L(hހ"�14�@�ɑ�=�L�>;Ρ�q�3F��BjM5�]0���/���mh^ˏ���vk�@�4�� ��l��z6Z�S����:`d�dVT.sZKo�a���
�%�[ǭÕ��L%C�ݺƭߣnK{���q.����Uh���w�&�c����%��l���y*�(t�<�e�Xy~*�F���~K�b^���T���f���k�o�ܽy���}xU=���)����~�O��1Oa�_<�;T!����k��z�\����o�^�W֫�5M��Ȼ��J��5�b7#�k�Ehq�q���ao�wy�8��%��e��@ř�� sW.�Hr���+�yؖ��̄��؂a{���yo���C�C`��J��!N�ߵ	Y�߽	�ίm��C$l'�Sb�OM��(�Kn}`߅��"���� �@sHԉ�&)H���?rr�,1e�'�ޅ�lb9|!�K%�f���X�Nd��%:�$�|ߕֲs,��O�b}HE/6�*6���s4SҐ/}2ۡ:F�B�alj�\mbu�;���    �*��bujX����Ɖ�����p��^����3��n߅�u2j������	}b���D<2�K�R�'1��G�ܸk��M�^���?��o�6;Ж,(z3U7� ܖ�P�^3��}�TK<\�IU/���̐��0�[�����v�K40b}`��b�<�aU֭#d&ˎ	o}ZvL8��w6��>i8�#Ή6C1����j�ٱ7Fc��:F��]�/���wwK91>,�������@T��.���S/p��d�����6}�~&�x��T�*����)Ǝ�QǱ�4��=R���K�`>Z�!l��|,g��'�E�$1P�e�:�=[/�Q5������"�c�1|�^ҋ/H�NM8I�#������ǐ��܂Đ�x����%���ܓ���꼻X�SH��#��g���E$?���!Ԣ.!_z����Kϸ�+tB2��d��@�hk,����^�8�b�8�ɜ4�|χ�s�%�k�T����v-�_��8��Q�G�c��	,��Ľ����{�g�#�5H�.��D��ꂷ	Qh`.�)����|�])r�z���ɏ	~@B`O�3r;ӝ:�t'�O�E@�����d��f� �C˳C0�M�i7JԮ��%0�ժ0�U����Eq0rR����Ǌr�@�bc�c�8 <��`pf����'�-���ӈ�j�R�A��rt&�����^4s�]ȷh�K����ބ�J�bm���XIbnwl��ީb����	]�W+�B���%x|��Ȣ���sB(NDI����O�t9��Z<�e�oќT����T
�j/ �5��7��ץ�qd������:�	���!�oW(�8���IU�A{'isT0d�+Zi�a�Ҵ&<$���<Ƥ��: ,B8�|��r@`��q@�Z�OD_s�T[��a��ҋ�e�ވ����6�P.�/"*�i �~�3�A��X2~���t=?d6���XS�`#B��h ;� �����bw@��|*a����b��7c",s�f����j��mx���X:�������P��	�HhH}H�'䱖��F��#,z�@��X 5�W��,!?8�2#r�c�Mt��ZZ���!��������F�����B�bj�gNgF���÷%	���������뀐81R���o����\�rhF]%]�8��\+�R[�멲���v��!DW��>��H��!Ne�����Z3�C�ҡTN�$��
�:_B*�Q9AbHՕ�/.1����>�d&$�� S��w_e
a��)�tz�2�<גb��%�mD�	��(�t���!�EQ��07w�bm��A՜�Z����1DF��C��rj#{��k�f�b8���ثu2�y�)�<42��)z�JY�����vR�)�]�{������T�"NiNy#�9m��V����+�B��$C�ݺR�0���΄>��F�O��3�L�HB%R�jt_d��Xs:R�
�K��D�ƨ41��4�~��?�:��ܤ��ހ�&_5�i<�QH`X^G�,(�FJ.���,���k���PK_a �.|�;�L���sE(����0��2t�3�G��M(tYCѽ7٩NJ���$�]^����(��؞ 0��Y�3�&��,:��Y�!ʞ;�2&�F'S���Q��+eU�x^�������h��@`���@���L�OJ�
I|B*��J0%��H�T�R�[♂� �B��BI�*�%��/���TX�ݙ���@(+�JYt���t����L�RУ�3��\��6)���!SU0Xp����F)�2��jFR1|����6�\���	=k���h�72��!�EDztj0����x������x0�)�ӈ�_���}l6��z���l=��w�]�)�>YE&[��}�u �c]���J\	&�jW��~jʆE�0������7�X�h;���n*ԯ-��L���3ENr,؜)\�w��q�_Cu\���X�m��<�j��S�{c�9Al��3����|���3���P8��I�!��"�:
T_J�3����Ό=�L�� �T]#_�V_�p�Zy�EB�`ĐԾ�������E�88���q'{�Іhx/f�47�p�,/Ef�y�Ǥ�c��]����c�|�Ќy��!�����C��:�/�M���M�V޽	]>�N/����3ȡ��!��[�
�#Fj�E���e�xz��N��Ki������aP��8��1�&ٌ��!p
7U��PεmFdH��{[b����s/KY����t�p@��t� P��y�<c�r�J#?�N/U¢��:�0�-KR��*1��Md��K�9}hxtFCn��r�í����sE���"�i�����P����R���%��������i[P�;���d�J�C��D��Z�
����Ni\Ц�c��a�+�(��@���u��&M���K/�ѱ�:��܇N���O�n�4����U��^CϫmEYkyX�vXnAY�6n����K��zb�0���
�>�T��:D*�����6�8��)!"��gC$�����tk�3�:>+MG��}Rf
�c�sT0^���h�KI��0���d!'�&��[�i��&��M	(�+��J���Ȫ�Ͷ��+�>��[h-�X԰�b	�`���X�&JP����0�MHzi]����w�1ON�}P�6�C��f��݆st*�0�w��C�7&o+�}�1I�c��>���X��.�o�X�C���;�̀;�4s���1��2�Z�eK��lc"2�@������5_,t��Ǥ��R�Hu�&̯c��N�j���F�q5�7"��b������/Tn���n*V���fy���+���`�{��*�yxZ����3g�u�I��4��3YkN�E��Rt�>BXj���n>br3g�	�KM��7�H���E�o�l	��zu�X��O;B��wFI��K}����ٵ�וY�)"	�#R���QG+�"�\g �#�kW8Z^��"xx�8\׸�
�{�������C���7e��E6kG}i�Ld]}�}�ao{�&2h���!���x�W����W<�޵��t�|{O-�!�:�������EK��gS�}���b�y��r!^�q�8���'��C��S��"%³�ĉ�r}ȼ���.2��d�)YBp1�|�[<���I���M��?����Y�~Xa������bF�i���Ub�&�C0t�l\a��V���9*����i���0��h6�h�$�TM��8�O��ԫ��
qIeˋ�F-%ŠV����P��4Q1���J���,(�AA��J-l~�Q��xd�T�(��XȵR�c�*�¸ʺ�H����f�fY+{7��{���&dJ�m�PCN�������׼�L�y�R�pU��7Cɷ��t�8t8F�� ��Q��,���y�]�Xk��#���8b�Zg5�Bs߶y{�22���6.����ي��N����YG9X�r�c1���<�P�]�(oGG��a�AG��tvP0֣�䀢� "@�
F*ޢ��W|���F�雱�l�h�j��qf�8,{�f5�TLh,��a�j,��fI7h{\�p�:����=w[q�=� Lx�ӑ�M���Oug��O�t�wp��gHf����q7Pv�r���-#��
�nb��4z	�4
x����6�n��u�ww%���`�����F仭h�.��,4VGt�0���1�T֭OcYw&6��Qe���3���ŭ�n�L;#��pS� [z�6�c�����p�}�8���d�qQ&�k	F������?�ᘶ��~]"���Q��&}��*Rm8���2B�\g�3C���'1��'��b��� �)p���_�a��;h6�<
��h�tpT\)>��Z��8T��Ȳ�p�JK�>����5��q�C�����Q�Ĥ�C$�z�o^�j×\k�Y(Fb.P׎@L��##nu�>$ؠ�P�L�c�&S�UT)Z�JS�Eg�Ҕz��Q0����Z�Gr}�h�����'�    �I����l��.n^ǗK��cPz4�#�b$t���E@j��98d�,l�I-�d�;3F�$14���'0�K�	)=����N#!�����9�T��炥�K464>�͌s�+���x�tF8�qGub9M,��Z�w� 1�\����B��Da�Ex{a��!XK�}��p�x��qv��ƺ�J���O���#
��a����j���"�^*KuAذ* �[B�|�;���u��>�ŊGP�Q���N��ņ�s��7��)�O���`�`]�Y3d�H��;�`�B�$S0���E�t���6�lbIa��F2�u��zW���<9g����?�xn�P:�*�����Z0���s}t�mxB�5L���g��˅�<�,�pA��ͥ{c��C�K|lA:��E�?���rT�6�#�jÑ���n�3�)��K��R�3J3�}�tJ6��֔ꮧʈK���.���l8�8�u����`����uY�L8H���e�2�Ƞ������RMt�d��D�Iǧ75�������Xu�M��#H,�\|��h{���t���V|�[�8�]�����{��3�3V�ց ��k'>��1eb	?8�ˋ� ۄ�jp`&�5 M�o�C����o�"�)�������!t�V�w%�wL�I`��bw9r<M�Mt��ﶲY�K�D��J���jk%�����&;[+A�Q��m�M����b .2�\�l�C&��$0U}/�ίZ*�yg�<�n��{��<V �%o���D�8�Մ����"����#j��&���O�z���P��}±����I7|��ȨU���_�W����g���f*�ՋL���J�$�9��:����x�X�U����T����^ N��Ȱ?����'�Rd�x��ܥj�X)~B��%�3��ʦ�<�I�e�UDw��;�M��c�{JI���M*�ڕ�va.�o��3�Ħ���M��#o�Ѭ�3�,�g'��8����V"U����o`")�b��Au�X�)�Xed�.U,�=Xۄ�%+=�J���fkJ&�#�c:�5�f]le��Ʀ>�f�f���t@���{F���y��G�  H�բ��=M*��.5�L0RE�H�������̱�M4G9�6�fn&8���Vt�n��wJ
q��h���kZ-,�~7աN�_K�3E��E2�f�C�^��W�<aˆ����a���X��bA�ٺ�l���ӈ�L�U�5��X6Ԥ�ց�kq(������TS����c��tx4шBg����~�-}���N���E�n�s�
s��m�łJ��=5]��N���Io%�3��ۥ�&��i��a�%��eq�>��}���Q��GD��o��Մ�b�VUa�4Q�+�f ]L�n,��B(s��k�ކ���YU�Y�X_��U:{m��v�n+5��Dω�M4��׻&b�Z�}����h�!��V-0߶�8��M�:�`6�6So�.�750��L$O�k_c�ժ�@b�J�ky~�2Yx��!8־|��?#�ث������ē��=eU�iƄ��Ӽg��Х[p�u4%?��_(c}�G#��h2�k,�j����N�被�C���5."{NQ��� Ym1��h�p��h�Y�Q��t���x�.d&����T>��b,�=�����}��)�E�+7��㜍GTTU \��2E�P��l��9ڔ�(d�2��u��,�'g݆g_�Փ�܋�X:�4~zeX<�ƞ�� �3�Q*Ci�}����T��P$v���@a�t�Č���1B��(9W�h)��9$K��4�Wx.�:�G�j,��4g<������M?��pP$�,��Q��IE�f�a�=��'/1�Idb�6�3C
��]���6ՊX��@�l]���5�p�?W���=�:Σ��ry,��������rk	,8��N�H�%��T3)��!i�S(�`S�2����y�
�o�y�^|#��7Φ(V:^f0����*t�	�j����,�"�K��u�&��LM�9����b�`X����:Ή�Wי��f,��}�j��6���Uמ��ϵ���X
u�?���Y֌--w�q>�c�7��U�Q�� ��g%^��Tl8�VI�U�9�pN^���͓bl*����M��� ��xe��T`Sz��f*;>�'�im4�Ű

��t��`�R5�܇��:X��n�5/hߣ�d�|�+jg ی��������3G�9`�(�ω�W&=���u�Z����ؠͥwce`i��_�+r��C8���<����C��0B�oe��v�M���«&a��U�?��M�y�Հ�o^���D�ǟ~�[1�qת�qt���
�GG���L�p#f��4p.NP�;
���!k������T��Ye�Y���D���g[�!�[Mp��M�&�9����Ko"�i$\z��n�|Yl�%�6O���_V�����.�E�]�`�}����]�������ƹ&�)�4��h�I|CCc챨�4v��xc���C6�3+��&dN)({��4���
�H��i\��X�կD��ʂ>A��yx%���M�
�`�a��@��c����p;�����cc"�9���5��x[�x��j���E#r��e+�n���?��K`��Jf(cSm⻰U��-�&1t֨]d
2hu���ȉ�ખ����XZ��s�%d͢�+���c^�ec��Ds+C���S8��O�1d*]��ۘ���J�	�ywX@>��G��zXm��_tK�V*�D��5X�Jv]V�F����Q�����>�>׌�c�W�=O �Ds���zMxz�%Kz��ʚ��&O=����&��l��҇
,�8S#�u�X��A��A��F[M����"�f0JQ���	�S2M#hbU0$�б��p#ł�!�$D^�	d&-Z�8}�VZ~�Ń�w��/u:<�X���/9*]�^4�f����F���6��1� ���,�73���fϥ�M�M��L4���\T��Ɗ�ް��f��2P��Ɍ�`��'��'왛m}�tl�� .�f0�lU����b�Yhp&�d�\��_~��AlQa1��06����!�U}�k�YY8 X퓶�`6���to��_�wSՓ�U�S%9c��'S��Ҫ^v|,�*��_�V���Ri��a¨t}��*�f�`�	Ot�dTw�}�iٍ�E��8f[2��mJ6��	�7�^mt,�7Ƅ����-��ұ�fc��$*F�-C�K�PU���\����C��|3�]�)�T�JF�W�LFN����h�#d���i~zf�p,��p>�o��02����Z�u�Kb�|�|�͘�y�J%�lq�/J�����l}��C��1|)�X%�~X ��wع(^y4V�`�c��}*�)9�p6c�ٚK_�~W��<����!h�}x������z����Ed;���$�{���xw�����l8O�d,u��F�\Q��d��X:1ķ>D�$2��%���!ɥb)8Ƥ[�Y�OF61�]|��w�MYSc��,��Rq�%��;��'e��l�ܑ��28�c�1Hi)҆��ъWq*?Z��قĐi��*2�Uҽ^Nˡ�ќ^yЛ�*>�!g�9Kg�h6��ǧ����O��r�#n���"zb��.��#�U�j��*����=do�欞�Ն�B)��KOކ�k"v.Ce�<A�pve4����y�1��}��3d��DRdQ�C��_E)��B�+e��.����~�2h�cH�xyJ�:�k�,��8ܤy��q6��n�9 PuƦ��.C�>�r�8��Ft��|Q�U�7���|5�+�7Q����y����C����X!u���p��q\	�-�P����--��p�5�p��j465O���&3\��>����	J�X�F0?�l46�]Mpx,�Vv���:>�`��2��Oݸ	��1�t�U68��8W�'R�9�ލ=����ij�����,�7]?�����ض=�:��7t��د����n�]�aY�^<�=*@�e~���M���l�م9q�O��?=�0y��d����6�� �  8b���&�a��:\Ј�����q�2}]e
�!c��C�xd����.�+��"������"0����v�%bg�ļ,�K5.%~u���5Ap�"���;��@��8a��Љ�G�Ը��p����Q��4��磆Q@�aEԚK���!zbT�	��Z���]�869 k����j��shj��N��[�Yu�M%�l��i9�XC/8[`Z�J��=c�f"C@��.5��I�e-߇8�4�R/��)�B�[�d���W�ž���ĲI�%�s�Z���æ:�}S�aR̴=�	Ů�[&�?ٶ�+�>�K) qJBj뚚�Ģ3�к�ЎU���/K�'޶k��|8h�C�n�T��4���-Y���ڠaI�6�H��Oz�H�A�FF��?1A�� �R����Y�2;Z��V��%�zf=X`vAė�����]�U���[ع��
^Q�p{t�P��}A�"zN��(D*&�)3����e,Z� j�|=b��Y,GyK��넵B��f5۲6S5XBK�WN�]j�ѽ?5<!Y]0]m��/��q�[XĖl�T.2e;:�wS}�sM���y�8.w��	���h0{=�j��sl�0ja�vw��<���4ts7�o�M�cuo7ՙo�`�5{�4k�pN�1ךa
�~�YV�`�K|H~?%�;����&Hc�s�(,��{2�|��Z��w��ֻ��'�Wt,4[ɠ�Qi�:��!�l]��}p^,�z�74{Q�W=R����C0�4���5�>�z����@���λc��05��Y�3�nFF�5H8,�G��D�aQ��Q3&>���7uIֺ�i�z��b���n)��=h���[�K	x,��ݱS�!�tS5�#
�u���Ik�4�c�q����Ioo�*Hτ�時ەa>��ȐI*I��d�:3��VC���	?7��$���=R���14��X�:ݕ7��0�����7�Y��3�n�7y�j�q?D��I������c>��Lգ4k����#�r��o���	��uDD����z����T��8s\}�P�}��!��c~�P|�[�(��r���p�w�F�x�w�w�H���C�֗���z��y����#�{��zm����H��l��<"�p$D��B3/S�+*�$�\g�Ɩd
�պR/�{S��2��/�?�7���6>S;��n�W<��O�C��hʍ��yJ[Dk�ݍ�+4���$�ֹqKG`����=Ke-sQB`���Mo��X?����և||�C1���
�vo��:"�WQ��B/:��2q��$䤫��~�I�����%��i��0͎g���E��SR ۙ����X`}h.[��C!���"J_�	��x�6�i�h ����Љ��&S���c`��É�'��!�Mt,S��#j��@U�;�+�'S�J�/}�):��������� yQicʏi$}�['=��W�{>T�<�E��>ć���<�y)�7��HV�mroBƚ�3�U�N���6��,l����u��H��e���@j���$VsS?�	�w[?ܙf^|�������j�Pyjˬ�mѿy�?�e�6a����!�v��z�Q��h��le�H��DC2�A���m�TL4g,-���d��U��d+�����!_{����Xv�ϰ&���r�৚U�2�����6�#K9g+��`�g�[#٩�e͆G$�&05����@XSiv�d9��_�4��c,[j�qL�>4�(�*5��!�7B���_�M��Ow*<�6S���R1���&�˲H�e��ã��v��{�&�՛rh׬!���~��?�d�K�3�$�c�_��7G�#�A�������0�J[AW/�J`�;.�		�g���1'�I���[��<�@H޽z�������瓋1?��G3�2��1�n ]���?
w{H��D��C��H�i��U��N���KH�������ߎ~ڦ�����.ΐc��O����g��'��uVVW�>}Up�/`����Nӯ�Rgv�v��vS58��5�,u�H;�Bq�q�O<�"�d��x�G�D;ƀ|̀��5:M4��Z���m��TS\�޾��qdK*^M��@�A�p2����e/����TN�)
���a���y��t�n�춥�<eM�%��K �0W��O�����Y�#1��?"'���������돶V���>���f�� ��>~������#�����ςO�!T��}�������W��_9<<�"|�y����YI��?�?�������\NDg      �     x��]]��|���.�Cr�Q6b�!1ĉ^�r�V�V���J��}X5
]�WՀh�b��é�`�����t���ݜ���r��]IS�yJ7o�OYb�(�Z�*崩)�֦.�j�*��i�r��f)h���⚦$͸mS�v�c:iȵLIZ��错�<OI�i?%h���m˔��~J;m󔥝�2e��^���<=]�)i[�Eo������T��y�zuTn�<_NO��|<�J+`GV1p��ͻ��4.�`!���4.�`#���4����Zp&}�D
3f��1�4�Tf �� &R���z,i%���7XHL����-�����ԩX�0�$*��b-&���F�2$v��3�_�G���z����>��Zu����<k㖝��2�|�����������p8���[�wpu8:�#;��gᆭ�y�`dW#�V�:��#p�:On�:Sop��	�������ٙ��� 3�RH�v���Ċ�Y�
g�H�3pt�p���Z_��ދ�;�4K����ڬ���w8�.O��`}�IT�IT�)��C9N�Z�p�G��Yd7�j�6��F2�'��tY���Ӥ5
MN����;�I��\&�u2���[Kc�-a�Y�6H"�I݆4�-ؘ�kX#�IX&�IX!�I�m����e*��>"g�%�I�r�>c��
;oV!�J�IW�������������oO_�o��z<=]����A+	96h��%>�F��4��c�F���3Ur{p��TTf2p�ug��y'��)����Q}w�Q�����F��Qm���N���^w�n�od\W��88j�+nÔ�FG�����ox�1*nù�� h�o�!8*���FFQ&<��5��A�#78��
j�7���^!��>�F`���I.����0	�A`PKV���/�Τ_!��mha$.@{.t*���Am���t{y@L�,%)�b�N�Ѳ %ҮЩ�e�[��T�t9T�X�V�J�vbUY�nEEYM�X@�Nv�A�ژC�v�����|�V��}�q������&��(L��:f�i��3�Ub
�DM�@�
��:!�k�����`/5+�J��R&h`
��8�S�)Pũ��vS��w�����ڹ3xPIbiTIJ�(���Q�	ȨJU�:�R�
��w�&�$6(�'0��`Te'�)P��Z�6U���Ե�H�����t}�P������x�������5�	�i���=h�[P�НR=�X<(���
!���xPĹ�����"�u�m�}��C���l���x؍>��a�����"�i�D����#/˂���L~�lV�:<l&�{�&����D�ԁ�f�<�3u�]��-�=l������׶� �~�篇��j�aE�(1���P��Ǣ0#��:��}�r��w���50�ZY��P��NIZ@|� d<j��(��	F6��� 2V�eФ�mU��3QIb^�K�)I�e�N<S�5�S)I�����QIT���0e�yj��"v�������UA���b�CV��	)�G
)��W!��ٕt���I��fb0%�j`�a#�Ї�E�~L�����b�Q���X��b.���uu�Ї�S@/�#x��r��4X̵�_`*�Y�}�-�OG�%0�Ч!P��㠕ϧӵ&��.��f�(k���A��q��6�F����A��(\c��a����dw�^gE �a�uふ�ƾJ-�d�7G_i�M4����V���mH ��!�6�VѰٖ�-#�Ѻm���X���:�)��d��F�_��ʞ1��U�%����9��C����\�G_�mL��࿜~�@n�G5��鵴�װ�ד��%���U�:�JcRt���`r�Q�����A�1o&�k��y�&O���!ow#��m�LG��c���[pZdد�Ihq�yw7��u�����ƭt��ܵ~��q3m�z�����|9�o|�\;���y���ǜ&U���Al�#�w�<�v�h�wu�  W0��]K�k�U���.��\5�s�.���N̃j\�..8�L�]��2�k�y��H�]5"��H��^��|��#��|0�������r�ֳ�fT�"��=y	x��s���|OK
^�g&�:q|���ֈ�t����	|)/HMن��j�P|F(�?��N��_��ҧ� Pe����/iT=������6���gF|z��J��]+�7D�<O����� >��X/�W�G`�>3��}�� �S���_�6���}
j?~�|9�:(��h����m��6���i8,�����������ɗ�O�}t���Ua��JA�+CG�+Ö _�n��[�:��
����[���r|��M�2���p6��p����|_��z�oȆ$����7��L>�����O���v�v��G�yW積��t�<>��p�����y���x�F�������U�q���H�2�t%����,�w_:{7�y�U ?#��$�d7����:p@~A���{��/��42��|y�J@���}</m	�;�́�vԃ�eOk ��N|�Wԭ������o�����F�gol@��:��?>����-�6z�#�������	�*��=_�s��K[}4��>]�6��( g��[�_N�&g7�/�ߞ��Y��������
>�*���\�g��o�ėΛg}8{Z|e��/}����+��Lr_�u,_�����'�a��g���5OpoO���_�יGx���+:�pp�k�H__��M# �i���� X��,�<cX�$�ϻ�|�³��=�MD@��П_J䳣9�?�@�����=�.��>9�?���Oس!��ٶX/��x�~`��П�}V�~`?/A�H/��̀�P�9�?�F��l�O8|	���
=_~~��%�<���ӦZo�'��FFz�v�EX�K&m0�[��#����F��cl0�އ�G$b���`�6�_���Ƿe��m��4͖�ҝ-��U��H[6����fh�&��� ����-�×����,h�-��ŖM�b�d�G���8�Nǯ�����hW}w���p>���kT���A	ͫ�p�i��kB�BxPF�kxs��(|����CEG����m��x�Sxo�o@&���4��DG�����Nt�D�}^�P5<*�E5ܝRt���b��LF����T�)g$��QL7���)l��[XÂ ?<�ዲ�Sn��?������L�]��Yp����k��.nnw���/(a����G���7�������Qk&�      �      x�m}Ms�ʒ���ؽ�&�$�%�a˒%yD��Fo�d��	�tB��jz9�`f5q�'b��q�Eϋ��x[���%sNVQ��r8�PU�'��Gy�SG�j��U���������O�yE~��ă޵j��R�5dҷ2I����'q�;W���*�O��I<��:��,7|��ݹ~���Jd'q����>�iS�*�QU-w��[��|��$.z_˪*�:������O1|X|�OO�A�J��it]����P~ �w&����˲1уY�[�v�,ޚ��x�wW�U��y�Zֳ��W��0�Ȏ�����i�ݿ��C���a������m4y�z��@f �M{g��E�nJ��2�I��f���j6z�ớr��ur��2��@������R��#O4�Ud��uY�h�.7��޼���쭨���$�{ѕie�����b>.�������&�R����E���I��ݘ%�e]T������=0�K�K�pp�8��"��8-z���Wz}�6jY�!����$�ѥz���;�R�Ņ�a�;׳J������R1�g�V�{f���99��3��=�|e�R[�^q-�w�M����RP�Fr���Pd�Bb\p�ƒx����{֑�.��RG�+�)�B����8>i*=�1m��F��[���?���m�[]���L|�,jT�w��P���h%o�j �4�+Umd�?k���,��Hһ7Sh�]�j�ԇ�>��b��kS.��=(�KHz���'���-UUAr�I��c|��l�љj��<��A���y�8},ش��Rb���{SFצnD�����X�覬xN�?򜴷��J�ݘF�B�/4�.���[G8b����Y��O�@r^.jQ����(3)+�VY�p�x�%ֻ6ͦ��]��壆���Q�� ��m��OK��L���k��A���z�j�c��M�I׋
x:�s�}���[TX৮�b�E ~|^�w.��f����X�A������vx��Oc{����5$�D�4�l�_GI�	��A��L�Es�I�aF,���NM7U3�D�
h÷�h7B52�u��fZU|�C��]:�f-�-'� ��G��ͦ����4����5�xD�
���]�������`�A�U�H����x28�f�@�����'������ыiW�5}!���#ZG׀�-^A�E�Jp����T������T����'�j�OĚ��o�n$�] ����_�fUr���-jy"���%��kv��=4xu��a�j��M3�3$#c���� \i~��ln���.��~�'�� �� ?W
��h��PR�PrǡK�q�A*��9s:�]Q���~,*~'y��f�o46���(yM��$�2۹=H��XN�l�@�o�Ӓ:1"R	��sƘ�~ 2�]6>}f�΀Lm	���Rz�B_����;E�+�%F�� �^���R)V �M	��5+��a���:��јA>�i��/���-83f���%ll�@�O�=�rG#{�)�C����	0U#��,_4���Q�I\�̺6z�F�%ar臨���I��R\�)�l���ȅl�RZ����a��ռ>f��u� 4��W�=5��F�:��=G;�w���nit�rƞ�
ށZ�w��#)�p_�:�t���^X���}�u@q���I�awK�����D:��D@9�o�Hh9���0:� �P�2]Kbq]u%�g��(DW��j7�Z����/����e�O�"�)�H��=�ي1`��������nც�A I�
A���K��U���:�Q#�7��uC�Է{k����+zR0?L���m�0��4�Ƙ��K����ȣ�}A�T��FsUHE�.�\�M��M]�_���2�ď\ӆ����-/�= �g`�-L˪�3�CW9D࿄��o h�4�,E��ޭ�83�a�~ȕ����W���@C���}_� %4�"=7�}K��0z�����4�	�r��b}����x�k!�C��D�	�,��b	�2О����q��Z��1
v���R~�4����#[Ew�VS?�#�|�iC����n�Hu�h�M	;��q���J@����œ%C	�uO�3D}�}�)|)7��R�th�u�\�/zi��լMUv��Cvm�E�t@��;}�%���A%O. �P��?����EO���S?ݑ�`��3���� �F�1�>�G'N��a(��#��oJ�;~W�U� 0eo��>���Ӛ���'������a8ȅ�h�֠�Y� �x�]X������O:�#���o�b&�{R[����4�+DRkD���F�f-|
�?xu_���w�s���f�t�,-�Ҏ�q��>���]Y?H����)�����B�]�z�y�ڪQ�5�UWE<�K� � ���Y7�O��{*w�Ơ=󘶘$�jv��s�I�rd�������I\uUi �ǳ܏��` �Őe	���V����1��1?��Y!�~R��N|`�x�Ҫ7��b�
1���4]tSn��!v����m#(���]��T�·�j�k@�M����8���
n�n���:K��8��K!����ă�|�4�F-�as��@�w���f����|��K�*!z�_�iv6#�8DO�5����ވ)������h�/z9�ZD0�ڑ�pX]Pg��f���gIq(įb�c��89o�$�I�������ei�E��#1�dVv���S�J1�����,�.z�6خ4=|�*��Ov����c�:��������������25_�3��V��ڈNr��|�w��M����n:L �I��?�t��\@[M�;�� ڌ��[�x|4���K�_�O�"FzP��@A�O\��Ut�P�ɽdP�A�G5t'�3� �A`6E���q�MUk�D��{D:w�p�s#)��cђ�c�k��h�`a��*3��)6L���-��-��g��a�)��_&K�򈴰=��%L�z��YcJl� ��f�L�xȓ��.r�7�S��n��HT����/{�6���z)l�'���6%�g��C#��Η��9L
�0�ۺ�M��z�x��]4;~-�Q9�!�X��;�5j	O�"�]�h�a�j�EWj=�7�?�����c3A`%�^E�u�����ܨlB�GWS�ظ�����@��Q��I6�Y��l��`j���{���.ȣ��b�a������^��x=G,E��{��3��W'��y�c�6M{�t]�ِd�,:��g�7U�zͷ�,:�-Y?���b�<ȋ%eV����GK��>��,ʩ��@Y@���v�[�
Yϱ��N\�mkT�v���}�8ФVe��J���B�7I�T+.A�Y\&��ųh�Xj��2uf��&Ͽk�i8�Mc�	��Ѓq����<�����F>�L��@�&�M�)s.* ����g�dY�2S�e��hG�^'ɯ�c̶F����.����`^��⸠����7�}6?�\!T `4��+ȃ04�
������Q">�1�]5x\=�ʗ�L�3�����	Čd�E�2��;{����XV>�E�6�� tM@� 8���h�ڈ��AZU���w�ٲۆ�_ۗ��}l��x�՞؜oV�V%�����b�1+b���̽��]5tvN�Jα`�j�Jl�M7o�pYőb�$�����?02_,	�9��F�1YxT�^:�fb (�X�}���aaf"�#1�č)[�Nt�ʙ���
�ܛ��>�x~�u_�~�H��2�N����>iP�M�t�wyߧ�B�l��~��BT���Xvj���<��\q�b��q�V�4�MA(Ba<���%o��?�ϭ�6��\�N*�]�\v�:�X������!y�/��5������z����n����a��M'y���>�+9������ۈv������G2�B֙�gSϋi`/y�{��;���o�,�^����@!�4%    ن�/�K�'6��_��%���-�C�p���+:�<]xn�Rw�� i���;@���ܫ;�h#ŷ�w��h,���ٹ�죈]��ƌ�j+�Z��=+���=Åf�oK��{%br!�+�˓�`'&��z��0�}p�ѥ��bIz�,�`�Ȕ�g�Mӥ�,����*[,,����s���ح��;�¾#*:bh��� �&�e�==A�O�&�.S��.;�!7��E]��l��禛!������#ِ[e�Ah4^��� +˒e`��}���EUP�4,�S��:D��O�I�ض#X�n��c�:����vXU�g7�B�ۓ�D&=���V��d:Av���:�ԇ��@ao�����p=�U�'M��.,+s7Ƿ�:�G����BbI@��,xݪvV�sü���Ϲa��ZG�Ҽ ��~���I Kg)���k~�a &o�� �<��bI"�v]�s-$����L.���F���lE�����S�[�I�3a%�$?��z�/e���Y�\Hv�B�����d�r�'.�@�g/G�U�c���[������ 	!�Y�����
����0�������m�4c��~B�&��X��n� P.y�Ն=g�L"�1魹B��X�V�f�¤D�lĈT~�.�ض�|x��Ҕ���(pW3"·~@�.��SHUj�߂��ǡ���>��r�Q���w$5!�6{���{E���|M�.ofch���<�,'��N6�暁��r䇢���s���σ�����){:+0�(���HH�t����-�А;������٪=��|�0VA*3[��;ˮ�@0<L�����r�K���i�k�LU�U�������x�/��2Y�� I֎�Zu��\��:"}{O���.������`�3�����cӲ4@�T�#􊩙�+��Lx�:����9��� �&�����M�`������|h�]�_D����«�3�l_�r�Y?h�_��Y.�`ڒYd�(���_��=��!vn�k�~����v�Aڤ�� @��o��_f˞��ǀ3���E�Lduݘ��j{4X�1U�dͳe�-���([�b~��,�Ct��H��~�#�ư����ŀʜ<8 ɏtA� ���j	���HD��������qA��6yf"��l�	bG�3�_â���<�ǮcT���|�����yq$$���2��@a�<��( <Q8\��t�A��V�5V�����L!y�K�)���@�Hv�"	r(�pyr^*J����[���	�N�u�-?l��Oz�Z�^ԋ��u>��З���9+;�� ���s1%[.�,���_�J+������JPqvO��8v�8������ˁ�}�?��� �zC�>�*ܩ���"hJ�`�Og9��k��^�ϔ)�KD?ҿ���Q6��y �l�w���_)���%Bu�c��-D�#�u_vn���R� ��q���6�+~���	b{����m�=r�������q���6!7��ds�6<
�\l��a�� L���\A5�`<r��XP[H�y:z��F��R(<�<p�1[��e�O�	� >���)�����H3�C��l*�5N�3A=!�Q]2k����E\�x7�C>���ܩ�U�wE�7DR�C�9H�3:��B��6� Oԏ�X�2��j����t�~����0q�w�P�ho$Ӕ4���+5�'n��][$G&yrFug]�A`r��	��ΈĀzψ�.p:�?,���E8�~>H�|6���w�{�GF�f��`�A{�E��a�Y��H����m�kf��E�Ql���uw٠mM���i�cw �P߅�_N��.�9th[T.l�������'�=��"�A��۵biXG�[S�����O0MTE�|Ӳmc/i�83��j��<�*�	�2ԛ��2�ר���T@��^c;�� ��nw���j���$VD�vn��b%����9�~��k��Y6�o��Z�>�Ѿ��Z�(I\�\[o�y��MWA���t:'��NC���쁛Md����V,<^Q�&|SWr9횕�L���)#��K	W�
�e÷�Yw�����Rp�[�Fz��#!��m�|�'C?f�9d6��VS뽇����
�\C��z8�	�4V
О�pZ�d�Y�������}7���z����}�6pq�K�8 ��SW;���ύ�AO����U�8����}�)\��Jm�Z����[���;S/ ��M�l놸Y��E�j<�ZM�7�aq�$o(F~�Fr�����e�O�t�9[F0�l��,��+|%_�L�<ѕZ��.d�a��<0B7Lx���Nw�I�"e���%���0�=�g�cB�A8j^ u >�y������lƝ*0�"�����l�����S�T�yhs��֎5@$�ŕ��]��ܴ,����]�C�g�]��t��Z1����A4��}��f~�*:�Q �I|�/8%����
����O��d�Ǟ37�-Si��u���Y��a�u�:��ƀ���<�<ts>��.���N��ve��8�� =ּ��_ې���|���8��$�>�N"��:���'�)��0cD���aгӦc��ڬma-�T	�_�/�l�ɠ^=V������&�%#�eF`�T���L��|o���:}���hr�f�I�<p�һ����� �P�p|�,��D���e�S�.g��K�i��T�%���j*$Y��a[դ�H���?a�n^�yr�ܺ���;[�V����ز�V�ī_je�˟Q��{ҫH��]�7�-q3j�.�9(d�,x\m�G�e=/J�4a@�R�6 � ��ݿ?R6�-5���$̍Zte�)$�S�)[;��s �C?���D*�J��r#�K
�ݫ����c��Z^��/��s����l(���|����z�H�d-�g[Ծ���I��- ή��0�ȶՖBؔ�.U�l�^c���jJ&^�f}쿶�J� x�ݮ�	�ש���\1���o"�k�crO���P�Hܔ�$�m\f��G� |d,D��p&��Dqc�d�{n�͌W���'DlOï�����r>nٳ�z��q��Wֆ�
ڱ��B6b���巩�)9�^�f���0k�#cmҝa�oa��B�����a?�%�F&92b{��#C��QS%/>2�#Sw�zîa{[�lO2
"��p�Nw�ڥ�!�ݾ`[�#I:�8�2�	��L؍,[\xB�˺}�&�*����?��h�Z�3T���M��9Y�J�>�i�4A?��^,����|����;h��y��C����r�IW��d��p���hz�_�H���e���y���è�靴zs�D�O�H���lP�K�0[ޔOO!�h�G]җ)S��z�7ԓ4hʰ�$�#sq�dЂ�	��l��_|����Y+Q���>�v��� ��������b{����w��z�,)4�]Mnê璃���x)�2~Bcɪ�'d���#qW#�Ρ�yZR�A!B��8���|n���C��ϋe�ly��m@&��	.�Fܳ�GN�oӶ�S���"�~ڑ.mk�7�B��
�m}GЪ�oJ�&'�،h4j�M�����ڍz��z�-@��;�Е@<���>8e�#Z��S#���9$���$�)k����kĒ�r�{����E�0�g��M�<���0�ӳt�ፌ&���x���طUJ�
R�WL����]�	b�W���;��t�}�
R��a��k�9����b/�%��L~}��!���)0�Fj;^�v4
�1f�T�=l8���Fv���kn��]��Y���Q��W싴�����#��$2J(x�I�@����9��5�Rѵ�˵����v�pdM�4�5�,(�������5 �	)��ِ��<>�Fo�Y:	��>��R��R��Ћ�dp�7��wg�5�3�l�x-�BM�q�#.`{"��9M���Q�}9%�,M萇�����Ky[xM�������}c�̅��
ٰ�$Y�˃qt��[�ʃz�;� ��p��j_������͵ @�G�\��C�^�JP�Ǩ����&��tڞ�;� }����^���v�o����<�'�$���,)�4Ʀ w   �uQڽ�jO��{˨k#���+f����٘�e�������ԅjd%7�\V�^��H�`p2R�#c���U��h�b�rK�/^BL�,�S�98��K��
������jF^�(��y�̴�]S.�u�al	��ˎ�}'ws#�^�k'ud����rr>GwI匃�&i�z��X��cV�.S۷$�I�����c�8�<U�\|6b�#��p�w�x޾�o>�|Cn��������mM���ES¿IF*(8˵�m��3J�<��_���v��ܵ/K���,*ym0���T�,{�<�����$��5���*���VM;�A%�^��Ɨ��N�����k�s��8��R,h�́�
Q(pr��{6���+y�2��xR�+-g�q������pWdB�GƠ���}lת�����@8������⮝��q��m>�0��NrGxxn�i��x�B���L|l2Z�Ӿ���*��dXаW�p�F=&��Cp���̯��JP���ݪv�z6�h���pj�H����q�n��#�j)7/�)C�O#J�;��	J)�ͼ0����B�ڮ�=ɽ`���}.�JO��5�C6�:�|���y�}��������b���R�pH�c�_v����2I���eB�}�hg̈�IӰ��\_}�\�CI��Q��v[H-D6�x�zu>t�
{�f;��XR�g�#ש�a��-[5 PB��X�n�{�e�%N�d�@�o;=/����$��i�{�=�� (��c����30P��f�¶J�?�=���W-|�gծ̦%��e�xm��f���r=��o�����8��.��=� N��Y9[!�����d������anb;�9�A��V����M9[��+�0Y{���.o��v�*��(u�F�B�ĩ7��^<�4���n�G�R�&��p��U����>�E���-j���VA�g�身�V?��q���K�VvB5vN����6�A�6��u"|$�+ɓ_��̓vC���?҉sˍ���w"C���ƳF��̀��J+�py�k���X��̙�Ԯ,j����}(6�N�yA?�;tՈ#{>:r>��/~G�������5~(��Et�c��4���K��7�_�W���^^��V=7�U�ߜu�x*,�C|XO\�.}R��]jEU8l+��5�*PKf%μ�[	�;}(	�Y�.�{h̖)��C�ݵ�O�EnZ���e~�D.�efN����)4�fa�[&ˮ_] �O4J�$G���͛�c�[��=�WO`2-���F�z޽a�>W��O�h�O��g��N������?�:�ht+��8,@�ڑ��D�:}���/��� z[��ٽe�|M�`O��bj$!6��ۢ�%G�����I���$���{�*a۞s���{��Ul�J�bk��o�D�m~�{��Ƌ�h�ύy���Q��Ƣ����Ԫ�X�H>rwaY���~��f�%�`6s�iĨ��zg,����E��C��݆�
J���˹\b�ۍb�^���I^����dC�H��ok=r�4���sc^ZBj�L�B��i�]��ݼ�8rٺ0\�*+[i�������(@����wM�?�(����{�>�vi��~ {�u&t0�B'���ԭ-kL��s��F-i�aC���P��l˸��
`�~ҥx�\�9���r��s�T�$�x,u��LǢ&h��~~x������D�6�����M��]sb2Gr��\����|����-�4��?y'�'N��f�����Ö��6,�$^�[L{� e��M�9��cU%�����S^]*D ��,-��M�F� �$�>���G"Y��~�0i��Sp�����\f=78:'f����.&����}A������x��_����}����Wn�#�B�]{֭~��hv���,�Md��/hv�Bvf��Ǯ�Nܰ{ti�M�#�$�居�S�v!�	�6�Jy�A�7��E�S��CU�0>��u�v�Ҳ�;R~�[���wz\j�q��%7컓�:N�I�w+K����g�o6���~�����^�ϡ	ʼE�|?d����M�ԋ��-��x�!����֦�o�v�_�������?�2�T�@��N�����IR��;Y�K��y��A�����S�����q�      �   A  x�UX�ΣX�^fU�\~�#uʈ��V����}ℹ<��I��~���~�����O����:�����}��a����С�Ṽy8<<6�<~|t8�ɼ����|b?z�l<��6?�+x�Ñ���~�?t�kv�@o���Os��^� �4�����������5��fӓ�;zb�z��cUw�94�n�u����N�m?:�k�l8��CȆ��z+؈�\_;pkkS�L����5D �~��i'k�����A~L�HӮ�v�M�A�k�TܶF���fޮ4���4O�g���LkQ!��\��0L�'�;u`Є����Qo`�Q_:��H��F�<V�K@ �hC���-3v�9�k�NO�NGj�j�NԼM�]22P;=1P�32�W�����s�>�z���7���SD�@)��3��_WJ`7R���{;��s%�pz�Q��8��=�QW�2�x�N���®�^��N|R���p
?��NUv�@]UuˈQ+��@�?#���\X��:����A�����8`]�pZ�Eu����Ձ���� ��Ϫ��	ܧ�^�;�5KߨU�'UHԪ�9sz%\���� ���Z��<�]���Y�f�ł�FOp쟏5��q]�$��t$Rga$ҪDxt�M:�(�Y�)SuT�5�Z������&���r���!�5���x���U�^�]WV}
�sj�;e�};�*O&Վ�v Ң
����1*���b7i.���A�� G8p~&r`<���L�@\���7�%~����z R�Ig-p�̵F�JTN]o#[�HϤ��i��ƣ�n<���D7���h�YC$�w����0R*Ss�H���H��-��[ L�s6�l�l�B���g�l$��&j?(<p��%�!9���j��� s�T!�냔"�5�p"�3x�t�lP)>9
r���+w�����RB�r�Y6C�v��9?�� E�8h�0��6�g�F���9�l��M�pڑN��4�Wρ�Z0�j��=���<�l��02��S/���{� ����7���)S��Xj���Ѥ-M�]�.�d#ӈXjnss�@��.^�H�b������r%��6<F��8ugB�ug�l�.����I�4��׵�Q6R��r�l�����6H�
q�F�S�|�hH�K�E�Z�ziH��w�!�0����?�BK�X�o0���Fj�������]Hj��CX!�T]R)�M"�l��4�X���5�:���lDY�t���T�w��ϣ���fJ([J�45k)�����Wn�T��x�9��T|C�pR��a)	�:�/B��KԨ��j��FG���O�H�&�&��o����m�eCHM�䩦3[fq(�Ϲ���`^�r�qϹ�u���$�H��E�5�HUƓ�o�J���V���*�Υ�]������LWݝS�(���KC�u���|��!��J�)�s�gq��V󴲀C�U��5�����"�-��?-^5͚R䨦R��6>f�W�O�����e�=�����rA��=��ȏ8�U�������w�u��      �     x�=��n�@E��W��$���"5j��ƐQf�Į&(�a�v{d��mq�S������QK�&�┭�l���Œ��.w�G��J��=9g��.� ���[���#̨ ��Hfpx�w�Z�}�S�L�_r1܍�&P(���o��(�w�{<Sm���A�Q��AxJC��Ը��E���ƽȏr-����X��l�3�AL��p�-VF9B��ij�����Na��4X�s�O'A��WK�V�����Ok�L��Sx�����66�gp��M���$�/��      �   {  x�eQ�N1]�_�;d�=�d�D4Z5Q�as�a��yl(ߛ&%�,���9��u�6E�-`]��d����o�w��w�g�/�G�B$��V�]*#���T�C͟��D�3�^�!"ێ8�e��.]y��j���\|&C����q�+��/���{��G�6Z����b�aR�lq?�T0��h%�mq#��H�V�����ה�(�'�l]�͔����SƵ�҇�<i���e��bIA���l3�[�d�D����$�2|�~�y*g�,l�|F-!+�>;{q5R�w5b�Rf}���k��~�2���zi5�bUp?R�j<^��QTG��������1�ZF���Q��S���p^�4�Y���2�>-.;i��5������      �   l  x��\�n9}���_��l��<ڂ��̋6Q�)��	������r�V�Y�SE��^����ӟ��������vp5|z?��ï��i��<N#c<�?�m����~���z�Կg��e5c�e���v���n�ܯ���)�1K3.55l'Ro�˄���3�>G�������K���]<��^����z��e��������8��^�����$���v�~8~<̧��0#L�mVs���p�ݽm7� Aק�������]�w��|���Ec�T���/?p�ݾ�~]n_~��/?w��a89TX<�����6��}���1[��\�Ճb��Ϗ+�V��AݹR�5*�.�}RY��Rk�:�23�l�__�o���b�z�=f#��4w�=m���ɲ���a�1��g��s8���=���l��|�0$	j���u�v�m;��g���u�O���χcXgv�|j����u������=��a�v��~<��~�����Ê����A����p��6$%�l��t`��we/{�IO�����.���b��x��*$)�V+-��s0:���r�+O��t<=��3٧a �D�@
O�$v4�n[,��b;E(R�c�Q�J�U�钙k?���71r.� 1��*�Pj��!:�x�(��*���$J��1e�������jU�S�Bו&-�C����T�e&>4*e&ˌ;2S��)O�2ݪ�"������  1�H�L��6!��z�@�?/e$�3u�57d|LI�#㟩c�~1�c�vX��3���x  F�$�D�?�Z�< gj�� Y�aq�UH6�l�������ϖ!ظ�rd�2���rtWe�� ��d���Z��6�F�����T��:7�u�z_Y8 4��m�:rF�Ĥ$g$J(�
�ݘT{�6�w}�BR �Ʋ]� 3��؈��Z�������*� :�]+ ��Ӱ5ub೤KQ�Ί� 4�	+@a���Lk2K�j ��4p�qn�3�r�6�5O�݆�"�qB�5�X��(B�2q8	�A*b��K()CP��2 ��$���JI����z�S��1�~� 1_1�G�e�,J6ӻ�:���� Ue@��uB�8*�|� V�}H�+,�	l�Ct� �- ��k�>���h��"rJ֏��쪒S���E��hcK��uy���N�,���d�ǪM��8�Hi-�Ri��y�R��6��T�i�l�H��@����(�8b�*֠��	k�2����b�՚G	c�[T0�V���䪬��ڄ��B@U��P�Y�tA��v_d�wS��[�:�86=���� ����-��Dr��I֐r6����4��(Z�dA)L��S�����=V��ԁ�܍b`�YM֠�&�;�|�4*�����aj��4C�~�k�z!ݝN��T[5 ����%m�H�zG[��D[r�1kM�<�t|}\�����gX�l���	rI�~c�H�_�p��d��#�y�I(��èV{vA�q��cb�v��*��S-�tfPk��֠�I�-[Wk�����I���x�Ӫ]���H�2I��I�n&����A�6���\��MDΫ��&����$'�-Gu�:�He&E3RT��DwS��ȩ�R�ug���K0��u�� 
F)ݽk"B�˪)�m����Z�f�1˿Uk|�`�#�H� l��1
|���������!��)�Seh�;��:ܐ7��9٢Z��}*�{�r��F�0}#/��K;暪	M]S�$P�j�����:��o�"�U����Y����"H�S�j�r�ߍ�b1̶N#��S�S�$��55�1N'����u�S���;�*\�79��7T�إ�#3�R�yG��ĴP�i�mۍH�'HC.����G������k=m'��z���Ι�Ԫ�&�"E���\�W-\�[G܋��܋c��*p!��ԍk񺭁^"�V�[���&}� p۬�i���Kp���آۇ����4�����S�
�~"]�Ȇ�t=�_:��=O.����! >_��j��ڊ-�Bv,LH��A�À�"cP�<L�s�)BC,��[�����UDQ/K�A\�PGW�wF*��m9�(��iܴi�OK	��l�<�hf�et D6e�!���Y8��Z�OXK�>��m���"GV(�ĺd ���iހLǓ�2<�JP���,�]���LF;2�(7W��"�&�մ��J3ʷ�%�%s�l%�@5�@���bK�p���u���Egi��b�m���T�s��LɝL���B�|�����i�b�,òS��)��[+��-�	R(�0��[`{�=KX��ykz�a��
_�'��,�e�5u�L�1�H�g������^��q<*�0j^��P!� ��TV���V��v��@�3�E�/�ހfx�6Q��0��5K��0���F?�mx�$�=�w7 ��u��4O`�@��PO���'xAl:���tb���a<��j� A���3�5�=�����?��N7�8�`doOQ`�����ze�#9f�9�Wж`���O�L8�~cRB��4��V~n�� �j�c�I�^��2nD�H�V�9�$?�` M�FOa>�F]�p��$��5R�`�0�db'%�R�=eOJ�N�*�V�d{��\pX�L{7`��\�`���í1�t��V=�	L��4�B�F�Nt��׸���q�Y^R�U�`�_�Z����2C�u�n���`�s�	���I�v�\/�c�W}�qw�]��A���*�F	F�h0��L� 0̪�ҴY�i���4p#�&'�|�O��k��͋���V�Y�����0�)�5�H�g.r�=��C�io�u�x ��P0|�F�����v��/�VEb�PA��/7f`��n<��;߯�"�]�m\G�[Hq�7�7pӤ{��z%n-෺��Œ-���������]@�n�dy`�nr�y��-�GF5i�qp�����-?*+>AT胿X���|y�P1��\*�U�#Y*�E�Z��F�b��?��O��G������!��?��l��J�<�������i�ܪޫV��<WW�ſ�$�*������tJ�N�7~쩊x`��8�3n����Z���K��"�a�����|b?��(G�|�B��hP�c�"w|�-6$����[��o�}�y6����@�(/~����U]�SP�Wu
��=�?p�X���DNQLP_4�˝H��J��qA^��rh���m_�翑�6?#��[��=�<v�T�����*��G��:]�z��[7��J<u!-��4*�?|���Σ������D7��oLu�Z��as�\�V'���5�}h9�oZ6��UD�;���?�hC��ݛ`��=�z�O�>��'zm��&�|YF>��^WF6��֠���ӽt�8)!���[�DQ�¤0�in�5����k䓢����I���ڭ\i��	�c i�����`�!0�ᮕ���x�e�d:�7X��:?|�{�ZEr���
@ucz�^Y�*�nIJ�3ՓY��d�[���x��-�eS<�c=W�[V7T�.�h��-tf�����a�����V�L�4�U���&�=f{uzS��8����d#���c?�`@�u��=���,�u���p8�?8*�v      �   U  x�e�]o�0����w�bj>h�2�R�-�	h�n<r ��r�v��;vZ���q�>��=Ί�c��E�2a� !\@ �-o���F��'"pO���z0
;=��E ���\R��nj:�wȁj��w�V�bQ4�c�V�V�P԰ $���/hZ�=[��jР�!
��a��P8����x���N�Q��0��lXe��M�zMH)�{�Z:i@iu((��WUjĹuQ?��/��[h匛�I:���	8�#�����E����-�t��{ۜ�ŝ�I.8(�hf�*���g�Ǻ���)*ԙ��Q��Q�ȝ���уj`�����Ѫrp�T�Uyq�������ؖm5'��LJ7@��3���P��VZH�-��ǉ�e����~4`�`dcC�gEN�R����Q��m���8nJ=����Ūʏ�!1=*.!�|_3�;a���"O�;���s$�}/��q�{���n�@�/ɤ�8MN�úM����Zj݈�Rxq�������Z<���q�<E���q)Y�®����z何x��r["��7�a�e�����nU�g���HG���e;��<�m�@��N&�ܭ1      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   D  x�U�ˑ!���R�$>�l�qlk {���3AK4t�������(�9�~8���71�h�M&�藙~!L�gD�$_t�rz.N�贳w�c��n$p;���=����>J�A`�v<�a�d���^��mץ�R�2�NO�l�A��Q��O��Z�c>vV�u����Jğ�Ce���^�L��Ո0e�X׬6*Ǚy
-�7����/��pF},:�6/��r�R�7�p�9�V�E���B��35�܅fu�4b7�4����M��M�u��^?jl�]-E:禂�ܳ��T(����{_3�AШ<8t����������      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   h  x��X�n�0=�_�/�?$���b��岋�(��
l�E�~N*J4�(����%�|||�L?�p���w3���u��z:O�_������V��cߌ�5��}7�C�.������6{S휝����zd��3�a���4u���`��3Nկ�������G�t�6�˼���ݏnO�!a`7�Y=ο���y譹T��kpv=��oA���*�ٶƎ��(�y�f�^����ٟw�Z�����3p�:����v^3�_A�b������v�%�!�7ci��yj��B��aС�0����F���U����kD6�*����)&^�2�p����3�-� �L��w5�_��@*}Y07?�$h�w"��L��:��_����QK䊊\�]��i�",6􌞨���I`	iJ-7&��3_1e�Të��v�3�a��i���YX�g���	Y q!*��3��P��X�*���d�׺F�@A���u��Mx����m�;VN�3��Z���|8�pB�������'�%EH��LTA�G�d ,�Y���`z�46��y
h��P*?!i�I(T�o5 ڰ�����4h�<(�o�)���۫z��&�5�
�O�x�!φ�y�ˊq���\� xy���г��HT��?���c��	@=#�Y�Y�� �p_c#�_��g��)�T .�d���r"�,�`S��0#�b/i%���0�l|�ЮY�Q�33'Ɵ�x�o̲�h��>L���K+����4��R�#|��e��+�x'���f@�2��pow��S�SP�bg1��^�/�=�̃9�� _��{�G@�A�
�_`�l�dX2*!|O�Y�8����R-h� �nQ��V�����      �      x�5�ٕ�6�G��p_rq�q��y���#�l ���W��_�������V�*�k:�2w��~�<c}������ֺ�������0��=��]�j��w􆥌3�:���-,�.m�5�j}�6�����1?Z�i���p���R5�ίVo�m|[-�\���s�����bj�t�2g�{�5��e~������-mO�~�W���Kh�͹���m�P�a��xIa	,�կ�C�	>�W���m﯊D]Y�܋e��^�|U,j�8���)����
G�U.�m\q�=�CD���^�S��T��	��lk�v���U�ƞ��E��:Y�l_3z,���=��U��&w\V={������:����N��E���e=,�?���uDK�X��@0�ر}ma���(u�7�lͯmLnv�rp<�*����,�#�uWo��u����]�g��_�.���k�,LB��Y5����B�c�������P<�����i��b�C�6�U� 0�`�����zzgE뎯�G�_I���iu�;�o���N��~������H�o@�*甪�����@����?���������Uk��,0��t���h{U11r�aȸ�J����8(��ot,?��Jl�K�u�3��a�s︽�3�8ߘXܮiu�<��Y�অ����T�c�!w��l�����8��,�V:y�qS`p�uѸ�ܪ��)q?q�-$ܭ��M����뾥�H8���)����r�����M�x\B��J������]�m��C����x�ؗ� �^��o��s���Ç0S���p���2���M&M�u�F\�r�ۅ���y��s=ɍ�/y�w;�*#�p�v�@d�&��oY
f(� :p]��N��T�cUD�Ő,��(�O��z��Ʒ�x~�U��nx�:1��SRG�5ʨV��r;q<+	��WD�֔�B��"x#8}+ �����oYj�&����Y:�mY�8~zK�?%
�P���V��T`�`��W��n(����`��8�.6��
O�����M�A����^��*��7&���-���H�\�s��7+Y-��*̀�����~�&�kX�o߿�F��N��JBa���Ax���(��2 9(��kE�*�u2�RN�9��yZD_��ڇޏQ�k��A?��3�Q�'��� L�8KSv[���oo�	-����R�"�c�$�=�L�BI�Ri�(��d 13�o�h�w�Ṟ���j���x}W�z�[Q��H5����&�H,�'�ī��-N����w�"�g7h)��YûW,�����E
Qnq��[/�[���@�����ͦ��������o��,�P���ݿ�S1����%H�U�VC���
��?E���) )Z��
M���@��^��V��r�Uq��Н��W�a��D�����b���2��:H�8Z���4��x�[l�@%����B�`�A��	MH�J��"*	&yP��x��Y�%��ڊEj�J�Uh
�&�'��@���L�rRЧ��/ tc�f,��*:	�FM$mH6��������h �!�BLߧ�R�j�`��2j���_!ঁ�Z��5����`�������y��~�@��T�������		��8
L��{�4��8�1є�7-��,Be6uHf��� 1A�BW���ʓ� �U�����%{PV_+P�&"�p�	J�|���?���<5h����t����%1!$!�-��IT~԰��.2��RWh/�%�L|D�����0
L"����d�nı]d&�5u��S��^=I�J��z�l|AvkoM�!�X�jH�M(uy�=�"�X$�C�u�3qSPO�s�.T��2��И�imp"Oϋ	��[�O��#P�'1ѯ�$���NE¹������&� ��d��4�	,P���aC�� �Y��
���Mm��T�I� �oU�@��{�o�a�8�h�=ԝ�DD�>��\��%����2P�q �N�x��$$/��i0V%�Qy"�L��O�:%~��Ԛʋ
�&./"�yD;��F�IH@�l�6�:�Nx�Tl�r`�'�x~�F�X�]���9����t��4��D��f�䰝jT�I�N�9un��qa1�]�n}m�
t�
k���w�7��^CE�ް�%�n+�X����~�"}YK�:DH]��O6@n{�b�(^_A$*	UKl��h�B�h��V�an]�&&O9DurK�hY��$&(�����!]����f4�@M6�2-Kd^�p,T�}�%
�,�IH�,��zY�L�-6�5R�1��ثXŶ�<Q%"�INiK�-4���dnJ?��m�����f�$���El��=�m�o�پ�ߞ���p="��jA
k{�%e�EXþ��ݡ���(�W���%^��@���č|����̙V�ljv5lA[KH�ZB�UU��O�K�������V�*�yд����6=(�'ؼ�Mv`c��[1�GTwրP��m>6�<m�lԐ@�*�28A絔$끚e��j���N���ЏJc�y%AELB�dIT�	@OU(ϩ �A�9��B��^=�	r+7c�Ԑ-�Z��Jc�F�Vdn3c�.��C�i��m#�-i7]\���uƙ�q#�9$=���1�t7�/]WZE��5��آ~�6KLn����)��*)(HB�Y��Qh��9/�:���^/�/����;6ٿ� �n��M�Ƞ̳V�e;��t~� Z���c�I�,��^3�@��|!$:� :PWl[�y��"U�GH9��N{ju����t/�(23��uיԺ�>�"��Ҷ��$OyB�;�
���ç�p����:=���B!,a�LU��-C�0�k�E\.�����`��co��E�9�LM>ЫN�� �'5B�:��f7�E'F��v8Xb�b�b�6��m6~�# W��񔈄⨺�D��cL��Z.h���l^uA
�;� �c�y}	R�Z1ه���^�Ok9{En ��z2	k8�v�e�2��_��aO㴣��4 %D�xDyҋv'�-=!B�}��	����Ns�uk��[�hPH�m7�ࡻ�5D���.�(��>kr�	�H��r<�+{����*�rזմ;���=Uh6�0M�3���8@��v�-�ni�h4��1�K�
\�T�cK7q�iC
�!�3�Q��������,N��E	�[Bg8��#���v�W�f�<�1��N-Hu�k'�`��ɘ>��4 �3������@��H�F��1 ,���k��d�Wj�����b��%\!�N:(y�ր��%Q")�Pp4�����q��&jj^����5�^D�)��Z�2o��� cxv��u�M�/aL��i�������33���C,()��# �C%��$��}f�J�񡪉�F��=!ɬ!-v��6o��L���i.�V�ϰ�{|�ԧ7q	Ea�4�_%r�N�Ț��Z�D��e�y�kY���Ӫ;��w_2�xp|%���)�#��,b+ �G��B{�Y��1�����L�k5�V z���,�"/HO�^�f&޶\�|G���X؞5�m�{��@��F\�-��x]�m�b;z,�/�&㦛¥�R�_�@t��v��b�!�4w��f���p�I�(�MI/j�kL��ш�}<; ��3w|M�ʗ�G����!bt���ɂ��IwW��לFx(�;�<�ʂ��#ޏ��w0ꨞ�Sb�s����ڰ�]�M^���E��+S_��	>o^�#�R��U��p�����8�Wn�$*�y4Z[@J�8s��*z(�O�ro"�=��k��2�I��!#A#�^;��3 `�K�ۥQH˖�p�Y�g.;����І�uHR(blkZG%>�t����5���+�Ps�B��;�Ǟ��7��i�w;RqN�-���ȑ���'"8�>hj�k�`�2G݅1ؼ#Z p�N=7�p~����Q�%X�N��[�׾�� ��d,��R�P�Ĝ[��C 7  �;+�Mi�K�cPz!�U�H���40�i)����6ǆ�{�AE�9G4 ز��z�th��9��z<�	+1��K{7f�3���٣m��c�`���*Og�Η���D�G��!�&�H��d2�G���s�0Q85���-%<Tr����eL�y�������6Oi��K�70A�윁x�0=C8�-S�H�#"H5�A���+(,0�$��α�����x�s��	�`�-��eV�5��l�l蝨�����v��1 ��)�w��;�`/-��h�n%�C�+�ԯG$�s��?��-��Z�?�;�O	�	�zH����e�BC#6{�hV�g�2�{獔�fy� ץd�J��s�	������o��=�#E)�{z:�w�@��<u�-^��	J0����[�]£�< @��ѣX0Afv~d6`M��@�j�~곻�wl �$w@��_~M�Λ�9a�Y��Rz�y]�4S-N�I�xޘ��|d�BD�~}��/$�g���"0�hٖs��.;A�MFjyGX(��#*�Fm�c��|DF�M�C'f;�.Ik��E�rM�<���:{�Q~�3��9��-a�`%E-�8��-{H߻r�xm~��a�`�7R��.����J�B)����=�����ޔ���m��Ϝi߷Y���8%E���C&Bd��L�u�:��Ӫ� K�]T9�:��!)���3	�8oh��X����A��#}�[ݏ��L8�;��E���gHlSc�y*�Cp�!V��v��(`��ad����~�q��9~F�cW����SrZb��ؕ('r�*��������:�32�/���0F�����`���R���u��U������"B�N*N��.3��`i�٠|����������A��Թ32LtlO\�Z��;âǏ���V��1F�s�t�Q%M�`~'v�A���T��h�a��H���c�~�W]��}����,7�.�P*��[?��tS��ȱq�P���ӰY�RL�aF�B�O�,I1��^����^/j�Q�3��߿�|���Mr�      �   �   x�M�Mj�@�t
��d��el�HC�i��f��̀223�߾2�Нx|�'��(X�)K(�<��%T2�@w��T�B�%v���ߜR�@��i�-Ԏ8���qJ�r�nٶ�{x��8s�������8{MFS�y����P��7ZG)S,j�'4���g�:4k�У�)3=�\$gn:R%j�>��'�pW�fw���1��C���ٟ+�����Ɔ�"ń�/����g      �      x������ � �      �      x������ � �      �   L  x���[n�0C�oV1���$������4:3_�s�	�E"4]�i�u"����.��o$9�Hb���A�3��q�D��ƈ~B���ڈкC��1��*zm���B5ڹ�-'�kh�q5�Qz$��tJu_��-'b�=�2�DW/��K��:G�]!
�{�C;̦B'�� �Y9��5B��(��Ȱ=J��A�rDT%� �Qp��u� e���z�Z����<�!������P�ͺq���!��PE���nH]��Y��}�ｐ���\��/��*
C� �]Ź��":���0���
[�o$�N��|]���%�      �      x������ � �      �      x������ � �      �   �  x�uVY��8��NQP \�,��`���d�ru��~ gWuǴ������-���L7[���M��z�/�֓M��W)��n�MIr�0�֪�E����%�7�WI�T^
K�2�^�m��/���	GU�\��Մ�AF�<J��R:����L�}���ݖ{���N�R�yt�a4S`h�;"Ih%%�� �?A���0�a���c�~��Ү���2Q�X�k�T�t��%��U�Y7�	�!,b!�3O���ٽ��SjRc��)N�D��4��,����c�,@2����ǖ�'���AFE�>�ؐ
+3���+Z�42SA���>���~��\�l�zY�m{��F	N��>bD?�X��Rt�ޜi�?CrJ�sz�޹X��R��m��q�pQ{m� e�>,����hm�I�80P����QOk�;���UC�eWJ�J�&\�Uk8�.O5�i��/w�[����tPLD�����}ɰ��Lr�̜)ь0��]Ov�ǌ�{C�*u�chs�DuP��9b&юg��Ϯ��������m�F������>��n?ş�����2�B�s�������J�3E g���}���������f�{-��S�B����s��M�ى��e��(��"�~������=<��i=���֬���1dt����ck>CJ��+���]�K�3����R��|;�z[����
cc�~�Q2Pe�q���-���v:ȳ=f����M/ݶ�Z���%��N�X[ȶc�`�Gebw`�1�b�"KQ�9���;d���n.����h�SS.P���˷"�c�B�q�4���s��vqI9/��_����4��J9Oa_'Z�~x٣��P�n�C��v�<���[�ۗ0ߺ}ެ�Z��L{\z��T��*d�A�ղP�u_A��(I	܀e���w�6�qږzz؟k�/k��<�4�Hn�d �+zc�[]��8@�d{m�tZ��/�����>e��h=zT[�V�T y�4<�'���|g�p&��a9��Ou=>OW���m�Y���u4n�@!���YK�%����J.~|:�^���u��\G$�S�����o��A��|rMG�$�9�����x��o
��,��W��c�s+�k��{%B��������B�L��N�)/�bu�0��蚳�=v�O\(|���k_n�^������6�4��ӿ��co��1��-yQ���T�0�IH^(}y��*�<�����y����3      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     