# Write your MySQL query statement below
select round(sum(num)/count(num),2) fraction
from (select count(t1.fl) num
from activity a
left join (select player_id, min(event_date) fl from activity group by player_id) t1
on a.player_id = t1.player_id and datediff(a.event_date, t1.fl) =1
group by a.player_id) t2