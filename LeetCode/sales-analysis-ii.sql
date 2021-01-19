# Write your MySQL query statement below
select distinct buyer_id
from product p
join sales s
on p.product_id = s.product_id
where product_name = 'S8' and buyer_id not in (
select distinct buyer_id
from product p
join sales s
on p.product_id = s.product_id
where product_name = 'iPhone')