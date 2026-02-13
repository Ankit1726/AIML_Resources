-- SQL Fundamentals Practice Problem

create database college;
use college;

create table Teacher(
  id int primary key,
  name varchar(20) not null,
  subject varchar(10),
  salary int default 20000
);

insert into Teacher
(id,name,subject,salary)
values
(23,"ajay","math",50000),
(47,"bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

-- Practice Queries
select salary 
from Teacher
where salary > 55000;

set sql_safe_updates = 0;

alter table Teacher
change column salary ctc int;

update Teacher
set ctc = ctc + ctc *0.25;

alter table Teacher 
add column city varchar(40) default "Gurgoan";

update Teacher
set city = "Noida"
where id >=21;

alter table teacher
drop column ctc;

select * from Teacher;