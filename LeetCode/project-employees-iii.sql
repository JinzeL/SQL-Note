# Write your MySQL query statement below

select project_id, employee_id
from
(select project_id, p.employee_id, rank() over(partition by project_id order by experience_years desc) rnk
 from project p
 join employee e
 on p. employee_id = e.employee_id) t1
 where rnk =1