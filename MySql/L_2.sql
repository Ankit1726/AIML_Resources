-- SQL Fundamentals Day 58

-- creating instagram database
create database if not exists instagram;
use instagram;

-- user table
create table user(
id int,
age int,
name varchar(30) not null,
email varchar(50) unique,
followers int default 0,
following int,
constraint age check (age>=17),
primary key(id)
);

insert into user
(id,age,name,email,followers,following)
values
(1,17,"ankit","adam@gmail.com",321,19),
(2,21,"bob","bob@gmail.com",30,1),
(3,22,"aliza","aliza@gmail.com",789,9),
(4,18,"zeo","zeo@gmail.com",2000,1),
(5,17,"ankita","ankita@gmail.com",501,19);

select distinct age from user;
select * from user;
drop table user;

-- post table
create table post(
id int primary key,
content varchar(400),
user_id int,
foreign key (user_id) references user(id)
);

insert into post
(id,content,user_id) values
(1,"Hello World",3),
(2,"I am back",4),
(3,"Bye Bye",3),
(4,"Good Morning",3);

select * from post;

show databases;