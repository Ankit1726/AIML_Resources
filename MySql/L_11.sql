-- SQL Fundamentals Day 67

-- Index in SQL
use bankserver;

create table acc_record(
acc_id int primary key,
name varchar(50),
balance decimal(10,2),
branch varchar(40)
);

insert into acc_record 
values
(1,"Adam",500.00,"Mumbai"),
(2,"Bob",300.00,"Delhi"),
(3,"Charlie",700.00,"Banglore"),
(4,"David",1000.00,"Noida");

select * from acc_record;

create index idx_branch on acc_record(branch);

show index from acc_record;

create index idx2 on acc_record(branch,balance);
show index from acc_record;

-- accesing data fast using index
select * from acc_record
where branch = "Delhi";