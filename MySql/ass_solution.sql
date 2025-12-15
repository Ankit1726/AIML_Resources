-- SQL Assignment
create database Employee;
use Employee;
CREATE TABLE Emp_Table (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    HireDate DATE
);

INSERT INTO Emp_Table(EmpID, FirstName, LastName, Department, Salary, HireDate) VALUES
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
select FirstName , LastName , Salary from Emp_Table;

select * from Emp_Table where Department = 'IT';

select * from Emp_Table where Salary > 6000;

select * from Emp_Table order by HireDate Desc;

select distinct Department from Emp_Table;

select * from Emp_Table where FirstName like 'A%';

select * from Emp_Table where Salary between 4000 and 7000;

select avg(Salary) as AvgSalary from Emp_Table;

SELECT Department, COUNT(*) AS TotalEmployees
FROM Emp_Table
GROUP BY Department;

select Department,count(*) as TotalEmployees from Emp_Table group by Department Having count(*) > 3;

select * from Emp_Table;
