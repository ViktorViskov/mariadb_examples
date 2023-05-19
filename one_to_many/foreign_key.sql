CREATE DATABASE opgave_4;
USE opgave_4;
CREATE TABLE users (id int AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));
INSERT INTO `users` (name)
VALUES ('Tobias')
, ('Jeka')
, ('Viktor')
, ('Kevin')
, ('Alex')
, ('Katja')
, ('Tanja')
, ('Misha')
, ('Ivan')
, ('Ib')
, ('Mads')
, ('Yura')
, ('Yan');

CREATE TABLE tasks (id int AUTO_INCREMENT, task_name varchar(255),person_id int, PRIMARY KEY (id), FOREIGN KEY (person_id) REFERENCES users(id));

INSERT INTO tasks (task_name, person_id) VALUES ('Task 1', 2),
('Task 3',1),
('Task 4',3),
('Task 5',2);

SELECT * FROM users;
SELECT * FROM tasks;
