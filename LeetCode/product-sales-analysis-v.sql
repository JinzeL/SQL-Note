# Write your MySQL query statement below
select user_id, sum(quantity*price) as spending
from (select s.user_id, s.product_id, quantity, price from 
     sales s join product p on s.product_id = p.product_id) t1
group by user_id
order by 2 desc, 1