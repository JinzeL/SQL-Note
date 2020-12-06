# Write your MySQL query statement below

select id, month, salary+salary_1+salary_2 as salary
from(
select e.id, e.month, e.salary, ifnull(lag(e.salary, 1) over(partition by id order by month),0) as salary_1, ifnull(lag(e.salary, 2) over(partition by id order by month),0) as salary_2
from
employee e
left join
(select id, max(month) m_month
from employee
group by id) t1
on e.id = t1.id and e.month = t1.m_month
where t1.id is null) t2
order by id, month desc

# with two window FUNCTION

select id, month, sum(salary) over(partition by id order by month rows 2 preceding ) salary
from
(select id, month, salary, row_number() over(partition by id order by month desc) rn
from employee)t1
where rn <> 1
order by id, month desc