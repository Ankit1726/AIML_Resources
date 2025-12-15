-- MySQL Queris

-- creating Table in MySql
create database Student;
use Student;
CREATE TABLE students (
id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(100) NOT NULL DEFAULT 'No Name',
 age INT,
 email VARCHAR(100) UNIQUE,
 admission_date DATE
);
-- All Databases
show databases;

-- All Tables
show tables;

-- showing Table Data
describe stu_record;

-- Renaming column 
rename table students to  stu_record; 

-- Renaming a Column
alter table stu_record rename column id to stu_id; 

-- Dropping Column
alter table stu_record drop column age; 

-- Adding Column
alter table stu_record add column gender varchar(10);

-- Changing the Order of Columns
alter table stu_record modify column email varchar(100) after gender;

-- Inserting Row  Data into Table
create database school;
use school;

create table records(
id int primary key,
name varchar(100),
age int,
grade varchar(20),
DOB date
);

-- Insert Data Into Table
INSERT INTO records(id, name, age, grade, DOB) VALUES
(101, 'Ankit', 23, 'MTech', '2003-01-01'),
(103, 'Ankita', 21, 'BTech', '2003-01-01'),
(104, 'Anshul', 20, 'BTech', '2001-01-01'),
(105, 'Amisha', 222, 'BTech', '2005-01-01');

-- sleect specific column
select name,id from records;

-- retrive table
select * from records;

-- where clause
select * from records where grade = 'MTech';
select * from records where age > 20;

-- Handling Null values
select * from records where grade is not null;

-- Query Operation
select * from records where grade = 'BTech' and age > 20;

-- complex query 
select * from records 
where (grade = 'MTech' or grade = 'BTech') and age > 20;

-- sorting order by
select * from records order by age asc;
select * from records order by age desc;

-- Limiting Result
select * from records limit 1,3;

-- Like
select * from records where name like '%A';

