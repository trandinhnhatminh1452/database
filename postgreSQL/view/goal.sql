select player_id,player_name,position,club_name,count(event) as goal
from _flms.players
join _flms.player_team using(player_id)
join _flms.player_match using(player_id,club_name)
where event = 'goal'
group by player_id,event,club_name,shirt_number
order by goal DESC
LIMIT 5