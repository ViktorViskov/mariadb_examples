-- creating database
DROP DATABASE IF EXISTS pets;
CREATE DATABASE pets;

-- change context
USE pets;

-- create table for humans
CREATE TABLE humans (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for dogs
CREATE TABLE dogs (id INT AUTO_INCREMENT, name varchar(255), PRIMARY KEY (id));

-- create table for human dogs relations
CREATE TABLE humans_dogs_relation (human_id INT, dog_id int, FOREIGN KEY (human_id) REFERENCES humans(id), FOREIGN KEY (dog_id) REFERENCES dogs(id));

-- set humans data in table
INSERT INTO humans(name) VALUES
("Jonna"),
("Ralf"),
("Gerhard"),
("Malthe"),
("Asbjørn"),
("Majken"),
("Olav"),
("Agnete"),
("Keld"),
("Andreas");

-- set dogs data in table
INSERT INTO dogs(name) VALUES
("Gav"),
("Puffi"),
("Milli"),
("Tuf"),
("Bars"),
("Hummer"),
("Pistol"),
("Mus"),
("Foder"),
("Funi");

-- relation
INSERT INTO humans_dogs_relation(human_id, dog_id) VALUES
-- family one
(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),

-- family two
(3,4),
(4,4),
(5,4),

-- family three
(6,5),
(6,6),

-- family four
(7,7),

-- family five
(8,8),
(8,9),
(8,10),
(9,8),
(9,9),
(9,10),
(10,8),
(10,9),
(10,10);

-- show relation table 
SELECT * FROM humans_dogs_relation;

-- show humans name and dogs name
SELECT humans.name, dogs.name FROM humans_dogs_relation, humans, dogs WHERE humans_dogs_relation.human_id = humans.id AND humans_dogs_relation.dog_id = dogs.id;

-- show Ralf's dogs
SELECT dogs.name FROM humans_dogs_relation, humans, dogs WHERE humans.name = 'Ralf' AND humans.id = humans_dogs_relation.human_id AND dogs.id = humans_dogs_relation.dog_id;