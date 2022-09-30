# Write your MySQL query statement below

select user_id, gender
from
(
select user_id, gender, 
case when gender = 'female' then 1
when gender = 'other' then 2
when gender = 'male' then 3 end as gen_order
, row_number() over(partition by gender order by user_id ) as rn
from genders
) t1
order by rn,gen_order