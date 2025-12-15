-- Updating Data In MySql
create database record;
use record;
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
(3,'Meena Jhoshi',15,'9th');

-- update single row
update student set grade = '12th' where id = 2;

-- update multiple column data
update student set age = 17,grade = '12th' where id = 3;

-- update all rows data
update student set age = 18;

-- conditional update
update student set grade = '10th' where grade = '9th';

-- increse age by 1
update student set age = age+1 where age < 17;

-- update using is null
update student set grade = 'unknown' where grade is null;

-- show table data
select * from student;







