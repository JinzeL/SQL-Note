# Write your MySQL query statement below

select distinct user_id as user_id
from
(
select *, lead(purchase_date) over(partition by user_id order by purchase_date) as next_date
from purchases) t1
where datediff(next_date,purchase_date) <= 7