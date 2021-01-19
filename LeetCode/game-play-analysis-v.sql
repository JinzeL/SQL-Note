# Write your MySQL query statement below

select a1.install_date install_dt, count(*) installs, round((avg(case when a2.player_id is null then 0 else 1 end)),2) Day1_retention
from (select player_id, min(event_date) install_date from activity group by player_id) a1
left join activity a2
on a1.player_id = a2.player_id and datediff(a2.event_date,a1.install_date) = 1
group by a1.install_date