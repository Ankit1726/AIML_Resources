-- MySql Joins
use school;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE marks (
    student_id INT,
    subject VARCHAR(50),
    score INT
);

INSERT INTO students (id, name) VALUES
(1, 'Alice'),
(2, 'Bob');

INSERT INTO marks (student_id, subject, score) VALUES
(1, 'Math', 95),
(2, 'Math', 88),
(2, 'Science', 90);

select * from marks;
select * from students;

-- inner joins
SELECT students.name, marks.subject, marks.score
FROM students
INNER JOIN marks ON students.id = marks.student_id;

-- left join
SELECT students.name, marks.subject, marks.score
FROM students
LEFT JOIN marks ON students.id = marks.student_id;

-- right join
SELECT students.name, marks.subject, marks.score
FROM students
RIGHT JOIN marks ON students.id = marks.student_id;

-- cross join
SELECT students.name, marks.subject
FROM students
CROSS JOIN marks;

