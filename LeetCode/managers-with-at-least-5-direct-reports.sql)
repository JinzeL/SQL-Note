
select name
from employee
where id in (select managerid from (select managerid, count(managerid) cnt from employee group by managerid having count(managerid )>=5) t1)
