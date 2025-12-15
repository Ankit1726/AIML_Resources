-- Practice Queestion
create database student_info;
use student_info;

create table info(
roll_no int primary key,
name varchar(60),
city varchar(50),
marks int
);

describe info;

insert into info(roll_no,name,city,marks) values 
(110,"adam","Delhi",76),
(108,"bob","Mumbai",65),
(124,"casey","Pune",94),
(112,"duke","Pune",80);

select * from info;

select * from info where marks > 75;

select city from info group by city;

select city, max(marks)
from info group by city;

select avg(marks) from info;

alter table info
add column grade varchar(20);

update info
set grade = "O"
where marks >= 80;

update info
set grade = "A"
where marks >= 70 and marks < 80;   

update info
set grade = "B"
where marks >= 60 and marks < 70;

