# Write your MySQL query statement below




select pur.product_id, pur.quantity, quantity*price as price
from purchases pur
join products pro on pur.product_id = pro.product_id
where pur.invoice_id =
(select invoice_id from
    (select pur.invoice_id, sum(quantity*price) as total_price
    from purchases pur
join products pro on pur.product_id = pro.product_id
 group by invoice_id
 order by total_price desc, invoice_id)t1
 limit 1
)