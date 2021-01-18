# Write your MySQL query statement below

select s1.id, ifnull(s2.student, s1.student) as student
from seat s1
left join seat s2
on ceiling(s1.id/2) = ceiling(s2.id/2) and s1.id <> s2.id