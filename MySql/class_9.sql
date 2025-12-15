-- Keys In MySql (Primary Key & Foriegn Key)

use school;

-- class table
create table classes(
class_id int auto_increment primary key,
class_name varchar(50) not null
);

-- students table
create table student(
student_id INT AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
class_id INT,
FOREIGN KEY (class_id) REFERENCES classes(class_id) on update cascade on delete set null
);

-- Insert Sample Data in class
insert into classes (class_name) values ('Mathematics'), ('Science'), ('History');

-- Inserting into student
insert into student(student_name,class_id) values 
('Alice',1),
('Alex',2);

select * from  student;
select * from  classes;

-- view relationship
SHOW CREATE TABLE student;
