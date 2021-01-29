# Write your MySQL query statement below
with t1 as (
select *, rank() over(partition by user_id order by activity_date) as rn
from traffic
where activity = 'login')

select activity_date login_date, count(distinct user_id) user_count
from t1
where  rn =1 and datediff('2019-06-30',activity_date) <= 90
group by activity_date