# Write your MySQL query statement below

select Day, ROUND(AVG(cancel),2) as 'Cancellation Rate'
from
(select request_at Day, case when status = 'completed' then 0 else 1 end as cancel
from trips t
join users u1
on t.client_id = u1.Users_id
join users u2
on t.driver_id = u2.users_id
where u1.banned = 'No' and u2.banned = 'No' and t.request_at between '2013-10-01' and '2013-10-03') t1
group by Day
order by Day
