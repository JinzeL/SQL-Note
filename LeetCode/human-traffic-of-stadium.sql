with t1 as (
    select id, people, lag(people) over(order by id) as pre, lead(people) over(order by id) as fol
from stadium),
t2 as (
    select id from t1 where people >= 100 and pre>=100 and fol>=100)

select *
from stadium
where id in
(select id from t2 union select id+1 from t2 union select id-1 from t2)