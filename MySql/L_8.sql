-- SQL Fundamentals Day 62

create database BankServer;
use BankServer;

create table accounts(
id int primary key,
name varchar(50),
balance decimal(10,2)
);

insert into accounts
(id,name,balance) 
values
(101,'Ankit',8685648),
(102,'Ankita',685648),
(103,'Kush',85648);

select * from accounts;

-- Transactions
select @@autocommit;
set autocommit = 0;

start transaction;

update accounts set balance = balance + 6464366 where id = 101;
update accounts set balance = balance - 4366 where id = 102;
commit;
update accounts set balance = balance + 4366 where id = 103;
rollback;

-- Savepoint
update accounts set balance = balance + 6364 where id = 103;
savepoint wallet_topup;

update accounts set balance = balance + 60 where id = 103;
-- error--
rollback to wallet_topup;
commit;