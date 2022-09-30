# Write your MySQL query statement below
select airport_id
from(

select airport_id, rank() over(order by f desc) as rk
from
(
select departure_airport as airport_id, sum(flights_count) f
from
(
(select departure_airport, flights_count
from flights)
union all
(select arrival_airport, flights_count
from flights)
) t1
group by departure_airport
    )t)t
    where rk =1