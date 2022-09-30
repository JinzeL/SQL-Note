# Write your MySQL query statement below

with pb as (select bus_id,passenger_id, b.arrival_time - p.arrival_time as td
from buses b,passengers p
where b.arrival_time - p.arrival_time >= 0)

select t1.bus_id, ifnull(t2.passengers_cnt,0) passengers_cnt
from
(select bus_id from buses)t1
left join

(select bus_id, count(*) as passengers_cnt
from
(select *, row_number() over(partition by passenger_id order by td) as rn
from pb) t
where rn = 1
group by bus_id )t2 on t1.bus_id = t2.bus_id
order by bus_id