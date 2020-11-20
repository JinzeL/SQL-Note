# Write your MySQL query statement below

with t1 as (select num, lead(num, 1) over(order by id) as next_num, lead(num, 2) over(order by id) as next_next_num
from logs)

select distinct num ConsecutiveNums
from t1
where num = next_num and num = next_next_num