# Write your MySQL query statement below

with stu_rank as (
select *, count(*) over(partition by department_id) as dept_stu, rank() over(partition by department_id order by mark desc) as stu_rnk
    from students
    
    )
select student_id, department_id, round(ifnull((stu_rnk-1)*100/(dept_stu-1),0),2) as percentage
from stu_rank