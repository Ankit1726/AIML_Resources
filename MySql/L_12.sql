-- SQL Fundamentals Day 68

use bankserver;
select * from acc_record;

-- Views in SQL
create view v1 as  -- view 1
select acc_id,name from acc_record;

select * from v1 where name = "Bob";

use restuarent;
select * from customer;
select * from orders;

create view v2 as -- view 2
select c.customer_id ,c.name,o.order_id
from customer c
inner join orders o
on c.customer_id = o.customer_id;
drop view v2;

select * from v2; 