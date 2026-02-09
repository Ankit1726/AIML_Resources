-- SQL Fundamentals Day 57

-- Creating College Database
create database college;
use college;

create table student(
  rollno int,
  name varchar(45),
  age int
);

insert into student values
(101,'Kush',23),
(107,'Ankit',22);

select * from student;

show databases;
