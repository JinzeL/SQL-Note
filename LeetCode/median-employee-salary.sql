# Write your MySQL query statement below

with t1 as (select company, case when count(id) % 2 = 0 then count(id)/2 else ceiling(count(id)/2) end as med, case when count(id) % 2 = 0 then count(id)/2 +1 else 0 end as med2
from employee
group by company)

select t2.id, t2.company, t2.salary
from (select id, company, salary, row_number() over(partition by company order by salary) as rnk
      from employee) t2
join t1
on t1.company = t2.company and (t1.med = t2.rnk or t1.med2 = t2.rnk)

# Better version - WHERE + CASE WHEN
select id, company, salary
from(
select id, company, salary, row_number() over(partition by company order by salary) as rnk, count(*) over(partition by company) as cnt
from employee) t1

where case when cnt % 2 = 0 then rnk = cnt/2 or rnk = cnt/2 +1 else rnk = cnt/2 +0.5 end