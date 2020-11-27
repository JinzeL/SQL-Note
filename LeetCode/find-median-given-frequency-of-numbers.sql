select avg(number) median
from(
select number
from(
select number, total, cul, ifnull(lag(cul,1) over(order by number),0) cul_b
from 
(select number, (sum(frequency) over()) total, sum(frequency) over(order by number) as cul
from numbers )t1)t2
where case when total % 2 <> 0 then total/2 > cul_b and total/2 <=cul else (total/2 >cul_b and total/2 <= cul) or (total/2 +1 > cul_b and total/2+1 <= cul) end)t3

