# Write your MySQL query statement below

select o1.*
from orders o1
left join orders o2 on o1.customer_id = o2.customer_id and o1.order_type - o2.order_type = 1
where o2.order_id is null