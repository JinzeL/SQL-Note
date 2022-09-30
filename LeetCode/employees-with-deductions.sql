# Write your MySQL query statement below

select e.employee_id
from employees e
left join
(
    select employee_id, sum(worked_hour)/60 as total_hour
from
(select employee_id, round(timestampdiff(second,in_time,out_time)/60,0)as worked_hour
from Logs ) l
group by employee_id
) t
on e.employee_id = t.employee_id 
where e.needed_hours > t.total_hour or t.total_hour is null