# Write your MySQL query statement below
select min(abs(x1.x-x2.x)) shortest
from point x1, point x2
where x1.x <> x2.x