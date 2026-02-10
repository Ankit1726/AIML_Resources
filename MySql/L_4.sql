-- SQL Fundamentals Day 60

use instagram;

-- Aggregate Function
select age,count(age)
from user
where age = 17;

select sum(followers)
from user ;

select max(followers)
from user ;

select min(followers)
from user ;

select avg(followers)
from user ;

-- Groupby Clause
select age,count(id)
from user
group by age;

select age,max(followers)
from user
group by age
having max(followers) > 200
order by age desc;

-- Table Queries
set sql_safe_updates = 0;

update user
set followers = 8000
where age  = 17;

delete from user
where age = 21;

alter table user
add column city varchar(25) default "Noida";

update user
set city = "Gurgram"
where age >=21;

alter table user
add column gender varchar(15) default "Unknown";

alter table user
drop column gender;

alter table user
rename to InstaUser;

alter table InstaUser
change column followers subscriber int default 0;

select * from InstaUser;

truncate table user;
-- truncate basically delete data in a table and schema would exist after deletion.