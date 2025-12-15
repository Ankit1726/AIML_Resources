use restuarent;
select * from customer;
select * from orders;

-- SubQueries

-- with where 
SELECT *
FROM orders
WHERE account > (SELECT AVG(account) FROM orders);
 

-- with select
select name,(
select count(*) from orders o 
where o.customer_id = c.customer_id
) as order_count
from customer c;

-- with from
select
summary.customer_id,
summary.avg_amount
from (
select customer_id,avg(account) as avg_amount 
from orders group by customer_id
) as summary;

