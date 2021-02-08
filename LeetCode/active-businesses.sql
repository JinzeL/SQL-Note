# Write your MySQL query statement below

select business_id
from(
select *, avg(occurences) over(partition by event_type) avg_oc
from events e
) t1
where occurences > avg_oc
group by business_id
having count(*) >1