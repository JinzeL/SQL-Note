# Write your MySQL query statement below

select user_id, product_id
from (

select user_id,product_id, rank() over(partition by user_id order by tprice desc) as rnk
from 
    (select s.user_id,s.product_id, sum(quantity*price) as tprice
       from sales s 
join product p on s.product_id = p.product_id
     group by 1,2) t0
) t1
where rnk = 1