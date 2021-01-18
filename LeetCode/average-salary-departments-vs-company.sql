select distinct date_format(pay_date, '%Y-%m') pay_month, department_id, case when dept_avg > all_avg then 'higher' when dept_avg < all_avg then 'lower' else 'same' end as comparison
from
(select pay_date, department_id, avg(amount) over(partition by pay_date, department_id) dept_avg, avg(amount) over(partition by pay_date) all_avg
from salary s
join employee e
on s.employee_id = e.employee_id
) t1