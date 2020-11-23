# Write your MySQL query statement below
select c.name Customers
from Customers c
left join Orders o
on c.id = o.customerid
where o.id is null