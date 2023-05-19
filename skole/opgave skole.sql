-- create database
DROP DATABASE IF EXISTS opgave_skole;
CREATE DATABASE opgave_skole;

-- using database
USE opgave_skole;

-- 
-- Tables for data
-- 

-- create table for students
CREATE TABLE students (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for rooms
CREATE TABLE classes (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for rooms
CREATE TABLE rooms (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for teachers
CREATE TABLE teachers (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for lessons
CREATE TABLE lessons (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for week_days
CREATE TABLE salaries (id INT AUTO_INCREMENT, amount float, PRIMARY KEY (id));

-- 
-- Set data in tables
-- 

-- set students data in table
INSERT INTO students(name) VALUES
("Student 1"),
("Student 2"),
("Student 3"),
("Student 4"),
("Student 5"),
("Student 6"),
("Student 7"),
("Student 8"),
("Student 9"),
("Student 10"),
("Student 11"),
("Student 12"),
("Student 13"),
("Student 14"),
("Student 15"),
("Student 16"),
("Student 17"),
("Student 18"),
("Student 19"),
("Student 20"),
("Student 21"),
("Student 22"),
("Student 23"),
("Student 24"),
("Student 25"),
("Student 26"),
("Student 27"),
("Student 28"),
("Student 29"),
("Student 30"),
("Student 31"),
("Student 32"),
("Student 33"),
("Student 34"),
("Student 35"),
("Student 36"),
("Student 37"),
("Student 38"),
("Student 39"),
("Student 40"),
("Student 41"),
("Student 42"),
("Student 43"),
("Student 44"),
("Student 45"),
("Student 46"),
("Student 47"),
("Student 48"),
("Student 49"),
("Student 50"),
("Student 51"),
("Student 52"),
("Student 53"),
("Student 54"),
("Student 55"),
("Student 56"),
("Student 57"),
("Student 58"),
("Student 59"),
("Student 50"),
("Student 61"),
("Student 62"),
("Student 63"),
("Student 64"),
("Student 65"),
("Student 66"),
("Student 67"),
("Student 68"),
("Student 69"),
("Student 70"),
("Student 71"),
("Student 72"),
("Student 73"),
("Student 74"),
("Student 75"),
("Student 76"),
("Student 77"),
("Student 78"),
("Student 79"),
("Student 80"),
("Student 81"),
("Student 82"),
("Student 83"),
("Student 84"),
("Student 85"),
("Student 86"),
("Student 87"),
("Student 88"),
("Student 89"),
("Student 90"),
("Student 91"),
("Student 92"),
("Student 93"),
("Student 94"),
("Student 95"),
("Student 96"),
("Student 97"),
("Student 98"),
("Student 99"),
("Student 100");

-- set classes data in table
INSERT INTO classes(name) VALUES
("Class 1"),
("Class 2"),
("Class 3"),
("Class 4"),
("Class 5"),
("Class 6"),
("Class 7"),
("Class 8"),
("Class 9"),
("Class 10");

-- set rooms data in table
INSERT INTO rooms(name) VALUES
("Room 1"),
("Room 2"),
("Room 3"),
("Room 4"),
("Room 5"),
("Room 6"),
("Room 7"),
("Room 8"),
("Room 9"),
("Room 10");

-- set teachers data in table
INSERT INTO teachers(name) VALUES
("Teacher 1"),
("Teacher 2"),
("Teacher 3"),
("Teacher 4"),
("Teacher 5"),
("Teacher 6"),
("Teacher 7"),
("Teacher 8"),
("Teacher 9"),
("Teacher 10");

-- set lessons data in table
INSERT INTO lessons(name) VALUES
("Lesson 1"),
("Lesson 2"),
("Lesson 3"),
("Lesson 4"),
("Lesson 5"),
("Lesson 6"),
("Lesson 7"),
("Lesson 8"),
("Lesson 9"),
("Lesson 10");

-- set salary data in table
INSERT INTO salaries(amount) VALUES
(35000),
(34000),
(31500),
(31000),
(30000),
(29800),
(29300),
(28500),
(28000),
(27000);

-- 
-- Creating relation tables and set data
-- 

-- create table for teachers-lessons-salaries relations
CREATE TABLE teachers_lessons_sallaries(teacher_id INT, lesson_id int, salary_id int, PRIMARY KEY (teacher_id, lesson_id, salary_id), FOREIGN KEY (teacher_id) REFERENCES teachers(id), FOREIGN KEY (lesson_id) REFERENCES lessons(id), FOREIGN KEY (salary_id) REFERENCES salaries(id));

-- set data in teachers-lessons-salaries relation table
INSERT INTO teachers_lessons_sallaries(teacher_id, lesson_id, salary_id) VALUES
(1,10,6),
(10,1,2),
(6,6,5),
(9,7,9),
(5,3,10),
(8,5,1),
(3,8,4),
(4,2,8),
(2,8,3),
(7,4,7);



-- create table for classes-rooms relations
CREATE TABLE classes_rooms(class_id INT, room_id int, PRIMARY KEY (class_id, room_id), FOREIGN KEY (class_id) REFERENCES classes(id), FOREIGN KEY (room_id) REFERENCES rooms(id));

-- set data in classes-rooms relation table
INSERT INTO classes_rooms(class_id, room_id) VALUES
(1,2),
(10,1),
(6,6),
(9,4),
(5,10),
(8,5),
(3,8),
(4,3),
(2,9),
(7,7);



-- create table for students_classes relations
CREATE TABLE students_classes (student_id INT, class_id int, PRIMARY KEY (student_id, class_id), FOREIGN KEY (student_id) REFERENCES students(id), FOREIGN KEY (class_id) REFERENCES classes(id));

-- set data in students_classes relation table
INSERT INTO students_classes(student_id, class_id) VALUES
(42,1),
(37,3),
(40,4),
(65,3),
(59,2),
(1,6),
(56,5),
(36,5),
(66,2),
(45,4),
(67,3),
(68,2),
(35,6),
(2,7),
(69,1),
(38,7),
(57,4),
(4,7),
(70,8),
(3,7),
(34,9),
(71,1),
(63,5),
(33,6),
(5,2),
(72,1),
(44,1),
(73,9),
(74,8),
(6,8),
(32,1),
(58,9),
(75,6),
(7,7),
(76,9),
(64,4),
(77,9),
(31,4),
(8,10),
(43,4),
(39,2),
(78,9),
(30,5),
(9,8),
(10,2),
(41,5),
(51,2),
(79,3),
(11,1),
(80,9),
(81,8),
(55,3),
(60,6),
(97,8),
(12,8),
(46,6),
(96,2),
(95,4),
(94,9),
(13,7),
(29,7),
(93,9),
(28,4),
(92,7),
(14,10),
(49,4),
(91,10),
(52,10),
(89,4),
(15,7),
(27,3),
(88,3),
(61,1),
(90,10),
(16,5),
(26,10),
(100,6),
(87,10),
(86,5),
(85,5),
(84,10),
(53,10),
(54,3),
(83,6),
(62,8),
(82,8),
(23,3),
(50,6),
(19,5),
(48,8),
(21,1),
(24,5),
(20,3),
(99,2),
(98,2),
(22,1);



-- 
-- School tasks
-- 

-- show classes and their rooms
SELECT classes.name, rooms.name FROM classes, rooms, classes_rooms WHERE classes_rooms.class_id = classes.id AND classes_rooms.room_id = rooms.id;

-- show students list and their class
SELECT students.name, classes.name FROM students, classes, students_classes WHERE students_classes.student_id = students.id AND students_classes.class_id = classes.id ORDER BY classes.name;

-- show teachers list with lessons and sallaries
SELECT teachers.name, lessons.name, salaries.amount FROM teachers, lessons, salaries, teachers_lessons_sallaries WHERE teachers_lessons_sallaries.teacher_id = teachers.id AND teachers_lessons_sallaries.lesson_id = lessons.id AND teachers_lessons_sallaries.salary_id = salaries.id ORDER BY salaries.amount DESC;

-- 
-- Deleting student
-- 

-- delete student relations
DELETE FROM students_classes WHERE students_classes.student_id = 100;

-- delete some student from students table
DELETE FROM students WHERE students.id = 100;

-- 
-- Change student data
-- 

-- change student name
UPDATE students SET students.name = "Name is changed" WHERE id = 99;

-- change student relation
UPDATE students_classes SET students_classes.class_id = 10 WHERE students_classes.student_id = 99;

-- 
-- Insert student
-- 

-- add student to students
INSERT INTO students (name) values ('Some new student');

-- add student relation
INSERT INTO students_classes SET student_id = (SELECT students.id FROM students WHERE students.name = 'Some new student'), class_id = 10;

-- 
-- Select all students from 10 class
-- 

SELECT students.name, classes.name FROM students, students_classes, classes WHERE classes.name = "Class 10" AND classes.id = students_classes.class_id AND students_classes.student_id = students.id;
