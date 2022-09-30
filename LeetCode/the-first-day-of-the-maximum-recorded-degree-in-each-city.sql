# Write your MySQL query statement below

select city_id, day, degree
from
(select *, row_number() over (partition by city_id order by degree desc, day) as rn
from weather)t1
where rn =1