-- Example Practice Questions
create database if not exists college;
use college;

create table teacher(
    id int,
    name varchar(50),
    subject varchar(100),
    salary int
);

describe Teacher;

-- inserting data
insert into Teacher(id,name,subject,salary) values
(23,'ajay','maths',50000),
(47,'bharat','english',60000),
(18,'chetan','chemistry',45000),
(9,'divya','physics',75000);
 
 -- show table data
select * from Teacher;

-- Practice Question
select * from teacher where salary > 55000;

alter table Teacher change column salary  ctc int;

update teacher set ctc = ctc + ctc * 0.25;

alter table Teacher add column city varchar(100) default "Delhi";

alter table Teacher drop column ctc;

