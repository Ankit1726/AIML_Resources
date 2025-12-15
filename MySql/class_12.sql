create database restuarent;
use restuarent;

create table customer(
customer_id int primary key,
name varchar(50),
city varchar(50)
);

insert into customer values
(1,'Alice','Bombay'),
(2,'Alex','Pune'),
(3,'Alisha','Banglore'),
(4,'Alouish','Delhi');

select * from customer;

create table orders(
order_id int primary key,
customer_id int,
account int
);

insert into orders values
(101,1,500),
(102,2,400),
(103,1,900),
(104,3,300);

-- delete from orders;

select * from orders;
 
 -- Inner Joins
select * 
from customer c
inner join orders o
on c.customer_id = o.customer_id;

 -- Left Joins
 select * 
from customer c
left join orders o
on c.customer_id = o.customer_id;
 
 
  -- RightJoins
 select * 
from customer c
right join orders o
on c.customer_id = o.customer_id;

 -- Outer Joins
 select * 
from customer c
left join orders o
on c.customer_id = o.customer_id
union
select * 
from customer c
right join orders o
on c.customer_id = o.customer_id;

-- cross join
select * from customer cross join orders;
 
 -- Self Joins
 select * from customer as A 
 join customer as B
 on A.customer_id = B.customer_id;
 
 
 
 
 
 
 
 
 
 
