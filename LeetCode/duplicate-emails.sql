# Write your MySQL query statement below
Select distinct p1.email Email
from person p1
join person p2
on p1.email = p2.email and p1.id <> p2.id