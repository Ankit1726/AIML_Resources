-- Views in SQL
use restuarent;
select * from customer;
select * from orders;

create view view1 as 
select customer_id,name from customer;
select * from view1;

create view view2 as 
select c.customer_id,c.name,o.order_id
from customer c 
inner join 
orders o on c.customer_id = o.customer_id;
select * from view2;