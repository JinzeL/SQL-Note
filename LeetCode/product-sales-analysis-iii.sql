# Write your MySQL query statement below
with t1 as (select product_id, min(year) min_year from sales group by product_id)

select s.product_id, s.year first_year, quantity, price
from sales s
join t1
on s.product_id = t1.product_id and s.year = t1.min_year

