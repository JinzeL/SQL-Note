# Write your MySQL query statement below

with fir as (select first_col, row_number() over(order by first_col) as first_order from data),
sec as (select second_col, row_number() over(order by second_col desc) as second_order from data)

select first_col,second_col
from fir 
join sec on fir.first_order = sec.second_order