select class 
from (select class, count(distinct student) cnt
     from courses
     group by class) t1
where cnt >=5