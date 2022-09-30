# Write your MySQL query statement below


# with t1 as
# (select *, row_number() over() as rn
# from coffeeshop)

# select id,drink
# from
# (select t1.id, case when t1.drink is null then t2.drink else t1.drink end as drink, t1.rn
# , t2.rn as rn2 , max(t2.rn) over(partition by t1.id ) as mrn
# from t1
# left join t1 t2 on t1.rn > t2.rn and t2.drink is not null) t2
# where rn2 = mrn or rn2 is null
# order by rn

WITH cte AS (SELECT id, drink, ROW_NUMBER() OVER () AS nb FROM CoffeeShop), -- nb = initial row order
     cte2 AS (SELECT id, drink, nb, SUM(1-ISNULL(drink)) OVER (ORDER BY nb) AS group_id FROM cte) -- same group_id -> same drink
SELECT id, FIRST_VALUE(drink) OVER (PARTITION BY group_id) AS drink
FROM cte2
ORDER BY nb;