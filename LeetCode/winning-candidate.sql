
select c.name
from candidate c
join (select count(*) cnt, Candidateid from vote group by Candidateid order by 1 desc limit 1) v
on v.candidateid = c.id
