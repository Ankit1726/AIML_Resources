-- SQL Fundamentals Day 62

use college;

create table student_Info(
rollno int primary key,
name varchar(20),
city varchar(15),
marks int 
);

insert into student_Info 
(rollno,name,city,marks)
values
(110,"adam","Delhi",76),
(108,"bob","Mumbai",65),
(124,"casey","Pune",94),
(112,"duke","Pune",80);

select * from student_Info
where marks > 75;

select distinct city
from student_Info;

select city 
from student_Info
group by city;

alter table student_Info
add column grade varchar(2);

update student_Info
set grade = "O"
where marks >= 90;

update student_Info
set grade = "A"
where marks >= 70 and marks < 90;

update student_Info
set grade = "B"
where marks > 50 and marks <= 65;

select * from student_Info;