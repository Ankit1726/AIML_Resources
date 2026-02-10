-- SQL Fundamentals Day 65

create database restuarent;
use restuarent;

-- Customer Table
create table customer(
customer_id int primary key,
name varchar(40),
city varchar(10)
);

-- enteries
insert into customer
(customer_id,name,city) 
values
(1,"Alice","Mumbai"),
(2,"Bob","Delhi"),
(3,"Charlie","Banglore"),
(4,"David","Mumbai");

select * from customer;

-- orders table
create table orders(
order_id int primary key,
customer_id int,
id_amount int
);

insert into orders
(order_id,customer_id,id_amount)
values
(101,1,500),
(102,1,900),
(103,2,300),
(104,5,700);

select * from orders;

-- JOINS -- 

-- Inner Join
select * from 
customer as c
inner join orders as o
on c.customer_id = o.customer_id;

-- Left Join
select * from 
customer as c
left join orders as o
on c.customer_id = o.customer_id;

-- Right Join
select * from 
customer as c
right join orders as o
on c.customer_id = o.customer_id;

-- Cross Join
select * from 
customer cross join orders;

-- self join
select * from 
customer as A
join customer B
on A.customer_id = B.customer_id;

-- Left Exclusive Joins
select * from 
customer as A
left join orders as B
on A.customer_id = B.customer_id
where B.customer_id is null;

-- Right Exclusive Joins
select * from 
customer as A
right join orders as B
on A.customer_id = B.customer_id
where A.customer_id is null;