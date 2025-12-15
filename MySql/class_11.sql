create database transaction;
use transaction;

set autocommit = 0;

create table accounts(
id int primary key auto_increment,
name varchar(50),
bal decimal(10,2)
);

insert into accounts(name,bal) values
('Adam',500.90),
('Bob',700.90),
('John',800.90);

select * from accounts;

-- Transactions
START transaction;
update accounts set bal = bal-550 where id = 1;
update accounts set bal = bal+500 where id = 2;

commit;

-- Rollback: Applies only uncommit changes.
start transaction;
update accounts set bal = bal+10000 where id = 1;
savepoint after_wallet_topup;

update accounts set bal = bal+100 where id = 1;
-- error
rollback to after_wallet_topup;
commit;

select * from accounts;
 
