# Write your MySQL query statement below
with t1 as (
select * from books
           where timestampdiff(month, available_from, '2019-06-23') > 1)

select t1.book_id, name
from (select * from orders where dispatch_date > '2018-06-23') o
right join t1
on o.book_id = t1.book_id
group by t1.book_id
having sum(quantity) < 10 or sum(quantity) is null
