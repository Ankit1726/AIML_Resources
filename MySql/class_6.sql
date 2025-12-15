-- Autocommit, commit & Rollback

-- By Default Auto Commit Enabled.
select @@autocommit;

-- autocommit
SET autocommit = 1;

-- Disable Autocommit
set autocommit = 0;

create database Bank;
use Bank;

create table account(
id int primary key,
name varchar(50),
balance int
);

drop table account;

INSERT INTO account (id, name, balance) VALUES
(1, 'Rahul', 500),
(2, 'Amit', 300),
(3,'Ankita',5000);

select * from account;

-- commit: to save peramanant changes
start transaction;
update account set balance = balance - 100 where id = 1;
update account set balance = balance + 10000 where id = 3;
commit;

-- Rollback: Undo Changes
start transaction;
update account set balance = balance - 100 where id = 2;
rollback;


