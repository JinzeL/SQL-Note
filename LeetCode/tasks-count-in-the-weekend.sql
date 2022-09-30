# Write your MySQL query statement below

select sum(case when weekday(submit_date) in (5,6) then 1 else 0 end)as weekend_cnt,
sum(case when weekday(submit_date) in (5,6) then 0 else 1 end ) as working_cnt
from tasks 