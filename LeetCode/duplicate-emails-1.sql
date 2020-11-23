# Write your MySQL query statement below
Select p1.email Email
from person p1
group by email
having count(email) >1