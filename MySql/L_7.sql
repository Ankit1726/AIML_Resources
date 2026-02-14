-- SQL Fundamentals Day 61

create database office;
use office;

create table Employee(
EmpID int primary key,
FirstName varchar(30),
LastName varchar(30),
Department varchar(20),
Salary int,
HireDate date
);

insert into Employee
(EmpID, FirstName, LastName, Department, Salary, HireDate)
 VALUES
(101, 'Alice', 'Johnson', 'IT', 6500, '2020-03-15'),
(102, 'Mark', 'Rivera', 'HR', 4800, '2019-07-22'),
(103, 'Sophia', 'Lee', 'Finance', 7200, '2021-01-10'),
(104, 'Daniel', 'Kim', 'IT', 5800, '2018-11-05'),
(105, 'Emma', 'Brown', 'Marketing', 5300, '2022-04-18'),
(106, 'Liam', 'Patel', 'Finance', 6900, '2020-09-29'),
(107, 'Olivia', 'Garcia', 'HR', 4600, '2017-06-30'),
(108, 'Noah', 'Thompson', 'IT', 7500, '2023-02-12'),
(109, 'Ava', 'Martinez', 'Marketing', 5100, '2019-12-02'),
(110, 'Ethan', 'Davis', 'Finance', 8000, '2016-05-14');

-- Problem Solution
select 
FirstName, LastName,Salary
from Employee;

select * from Employee
 where Department = "IT";
 
select * from Employee 
where Salary > 6000;

select * from Employee
order by HireDate desc;

select distinct Department
from Employee;

SELECT *
FROM Employee
WHERE FirstName LIKE 'A%';

select * 
from Employee 
where Salary between 4000 and 7000;

select avg(Salary)
from Employee;

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 2;

select* from Employee;