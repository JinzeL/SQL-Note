# Write your MySQL query statement below
select round(sum(tiv_2016),2) tiv_2016
from(
select distinct i1.*
from insurance i1, insurance i2
where i1.tiv_2015 = i2.tiv_2015 and i1.pid <> i2.pid
and i1.pid not in (select i1.pid from insurance i1 join insurance i2 where i1.lat = i2.lat and i1.lon = i2.lon and i1.pid <> i2.pid))t1

# with Window function

with t1 as (
select i.*, count(*) over(partition by tiv_2015) as cnt_2015, count(*) over(partition by lat,lon) as cnt_loc
from insurance i)

select sum(tiv_2016) tiv_2016
from t1
where cnt_2015 > 1
and cnt_loc = 1