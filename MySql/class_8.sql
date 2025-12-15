--  Contraints: SQL are rules applied to table columns to enforce data integrity,consistency, and validity.

-- not null constraints
use employee;

create table emp(
id int not null,
name varchar(100) not null
);

insert into emp(id,name) values
(101,'Ankit'),
(102,'Ankita');

select * from emp;
