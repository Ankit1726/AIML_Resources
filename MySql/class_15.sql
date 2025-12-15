create database Acc;
use Acc;

create table accounts(
acc_id int primary key,
name varchar(50),
bal decimal(10,2),
branch varchar(20)
);

insert into accounts values
(1,'Kush',8998.98,'Delhi'),
(2,'Ankit',16998.98,'Gurgoan'),
(3,'Alexa',5698.98,'Pune'),
(4,'Alisha',7998.98,'Noida');

select * from accounts;

-- index
create index idx_branch on accounts(branch);
show index from accounts;

select * from accounts where  branch = 'Delhi';

create index idx1 on accounts(branch,bal);

-- stored procedure
delimiter $$
create procedure check_bal(in ac_id int,out bal decimal(10,2))
begin
     select bal from accounts where acc_id = ac_id;
end $$

delimiter ;

call check_bal(1,@bal);
select @bal;