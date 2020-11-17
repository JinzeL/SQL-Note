# Write your MySQL query statement below
select DISTINCT l1.Num ConsecutiveNums
from logs l1
join logs l2
on l1.Num = l2.Num and l1.Id = l2.Id -1
join logs l3
on l1.Num = l3.Num and l1.Id = l3.Id -2