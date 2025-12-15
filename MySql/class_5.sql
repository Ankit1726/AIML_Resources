-- Deletion of data in Mysql Table
create database clg;
use clg;
create table student(
id int primary key not null,
name varchar(50),
age int,
grade varchar(10) not null
);

-- inserting data into table
insert into student(id,name,age,grade) values 
(1,'Ayesha Khan',16,'10th'),
(2,'Ravi Sharma',17,'11th'),
(3,'Ravi Sharma',17,'11th'),
(4,'Kush',17,'11th'),
(5,'Ankit',17,'11th');

-- Deletion operation in Table
delete from stu;

delete from student where grade = '10th';

delete from student where age < 16;

delete from student where grade is null;

-- delete all rows
delete from student;

-- remove table
drop table student;

-- show table data
select * from student;