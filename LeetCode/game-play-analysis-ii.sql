# groupby + join

select a.player_id, a.device_id
from activity a
join (select player_id, min(event_date) first_login from activity group by player_id) fl
on a.player_id = fl.player_id and a.event_date = fl.first_login

# window function - row_number

select t1.player_id, t1.device_id
from (select player_id, device_id, row_number() over(partition by player_id order by event_date) as row_num from activity) t1
where t1.row_num = 1