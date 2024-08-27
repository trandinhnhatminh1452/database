Create view _flms.top_clean_sheet
as
With Scoreboard as(
  select t1.match_id as matchid, matchweek,t1.home_away, t1.club_name as team1, t1.goal_scored as goal1, t2.goal_scored as goal2, t2.club_name as team2
  from _flms.team_match t1
  left join _flms.team_match t2 on t1.match_id = t2.match_id
  left join _flms.matches m on m.match_id = t1.match_id
  where t1.club_name != t2.club_name and t1.goal_scored is not null
  order by t1.club_name)

Select p.player_id, p.player_name, p.position, s.team1, count(*)
from _flms.player_match pm
left join Scoreboard s on pm.match_id = s.matchid 
left join _flms.players p on p.player_id = pm.player_id
left join _flms.player_team pt on pt.player_id = p.player_id
where p.position = 'Goalkeeper' and pm.event = 'start' and s.goal2 = 0  and pt.club_name = s.team1
group by p.player_id, p.player_name, p.position, s.team1
order by count(*) desc