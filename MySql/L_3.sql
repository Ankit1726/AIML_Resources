-- SQL Fundamentals Day 59

-- use exisiting database
use instagram;

insert into user
(id,age,name,email,followers,following)
values
(6,21,"Alex","alexgmail.com",10000,19),
(7,21,"bobby","bobby@gmail.com",30,1),
(8,22,"alisha","alisha@gmail.com",789,9);

select * from user;

-- post table
create table post(
id int primary key,
content varchar(400),
user_id int,
foreign key (user_id) references user(id)
);

-- where clauses

select name,age,followers
from user
where age > 17 and followers > 250;

select name,age,followers
from user
where age > 17 or followers > 250;

select name,age,email
from user
where age between 17 and 21;

select name,age,email
from user
where email in ("adam@gmail.com","bob@gmail.com");

select name,age,id
from user
where age not in (16,18);

select * from user
limit 5;

-- orderby clause
select name,age,followers
from user
order by followers asc;

select name,age,followers
from user
order by followers desc;