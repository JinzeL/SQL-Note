# Write your MySQL query statement below
with salary as (
select id, name, salary, departmentID, dense_rank() over(partition by departmentid order by salary desc) as salaryrank
from employee
)

select d.name Department, e.name Employee, e.salary Salary
from salary e
join department d
on e.departmentid = d.id
where e.salaryrank < 4
