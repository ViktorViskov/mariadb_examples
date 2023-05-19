-- create database
DROP DATABASE IF EXISTS opgave_7;
CREATE DATABASE opgave_7;

-- using database
USE opgave_7;

-- create table with numbers
CREATE TABLE nummer_plader (id int AUTO_INCREMENT, nummer varchar(16),PRIMARY KEY (id));

-- set values in table
INSERT INTO nummer_plader (nummer) VALUES ('BC69712'),('AS85621'),('BA55430'),('CD88201'),('XR99021'),('FK02209');

-- create table with cars
CREATE TABLE cars (id int AUTO_INCREMENT, model varchar(255), nummer_id int, PRIMARY KEY (id), FOREIGN KEY (nummer_id) REFERENCES nummer_plader(id));

-- set values in table
INSERT INTO cars (model, nummer_id) VALUES ('Ford Fiesta', 1),('Kia Picanto', 2),('Ford Transit', 3),('Volvo V40', 4),('Huyndai i30', 5),('BMW X5', 6);

-- create table with persons
CREATE TABLE persons (id int AUTO_INCREMENT, name varchar(255), car_id int, PRIMARY KEY (id), FOREIGN KEY (car_id) REFERENCES cars(id));

-- set values in table
INSERT INTO persons (name, car_id) VALUES ('Henrik', 1),('Carsten', 2),('Theresa', 1),('Brian', 3),('Anna', 2),('Sofie', 4),('Ib', 5), ('Marie', 6);

-- Show all tables
SELECT * FROM nummer_plader;
SELECT * FROM cars;
SELECT * FROM persons;

-- Select by car number
SELECT persons.name, cars.model, nummer_plader.nummer FROM persons, cars, nummer_plader WHERE nummer_plader.nummer = 'BC69712' AND nummer_plader.id = cars.nummer_id AND persons.car_id = cars.id;

-- Select by model
SELECT persons.name, cars.model, nummer_plader.nummer FROM persons, cars, nummer_plader WHERE cars.model = 'Kia Picanto' AND nummer_plader.id = cars.nummer_id AND persons.car_id = cars.id;

-- Select by Person name
SELECT persons.name, cars.model, nummer_plader.nummer FROM persons, cars, nummer_plader WHERE persons.name = 'Marie' AND nummer_plader.id = cars.nummer_id AND persons.car_id = cars.id;

-- add extra columns to all tables
ALTER TABLE nummer_plader ADD created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, ADD modified timestamp ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE cars ADD created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, ADD modified timestamp ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE persons ADD created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, ADD modified timestamp ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- add extra reference
ALTER TABLE persons ADD nummer_id int, ADD FOREIGN KEY (nummer_id) REFERENCES nummer_plader(id);

-- set correct values to reference
UPDATE persons SET nummer_id = (SELECT cars.nummer_id FROM cars WHERE persons.car_id = cars.id);

-- show tables
SELECT * FROM persons;