# Write your MySQL query statement below
# group by
delete from Person
where id not in (select id from (select min(id) id from person group by email) temp)

# JOIN

with t1 as (select distinct p2.id from person p1 join person p2 on p1.email = p2.email and p1.id < p2.id)

delete from Person
where id in (select id from t1)

# self-join

delete p1 from Person p1, Person p2
where p1.email = p2.email and p1.id >p2.id