# Write your MySQL query statement below

select e.student_id, min(e.course_id) course_id, e.grade 
from enrollments e
join
(select student_id, max(grade) grade
from enrollments e
group by student_id) t1
on e.student_id = t1.student_id and e.grade = t1.grade
group by e.student_id
order by student_id