# Write your MySQL query statement below

with t as (
select product_id, year(purchase_date) as y, count(*)
from orders
group by product_id, year(purchase_date)
having count(*) >= 3 )

select distinct (t1.product_id)
from t t1
join t t2 on t1.product_id = t2.product_id and t1.y = t2.y - 1


