# Write your MySQL query statement below

select d.driver_id, sum(case when isnull(r.passenger_id) then 0 else 1 end) as cnt
from 
(select distinct driver_id as driver_id from rides) d
left join rides r on d.driver_id = r.passenger_id
group by d.driver_id


