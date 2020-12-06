# Write your MySQL query statement below


select d.dept_name, ifnull(cnt,0) student_number
from department d
left join
(select dept_id, count(*) cnt
from student s
group by dept_id) t1
on d.dept_id = t1.dept_id
order by 2 desc, 1