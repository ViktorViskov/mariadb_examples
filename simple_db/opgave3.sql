CREATE DATABASE `users`;
USE users;
CREATE TABLE site_users ( firstname varchar(255), surname varchar(255), age int, is_alien boolean );
INSERT INTO `site_users` (`firstname`, `surname`, `age`, `is_alien`) 
VALUES ('user', 'one', 16, true),
('Peter', 'Mansen', 30, false),
('Viktor', 'Moskov', 16, false),
('Jeka', 'Redbull', 8, false),
('Loshara', 'Hui', 30, false),
('Dibil', 'Loh', 16, true),
('other', 'alien', 1060, true),
('humanoid', '¾¡@$ðds', 991621, true),
('person', 'person', 30, false),
('anonimus', 'anonimus', 0, false);
SELECT * FROM `products`;