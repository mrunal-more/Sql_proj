show databases;
drop database dating;
create database dating;
use dating;

CREATE TABLE users (
    user_id INT,
    username VARCHAR(50) NOT NULL,
    age_ INT PRIMARY KEY,
    gender VARCHAR(500),
    location VARCHAR(800),
    interests VARCHAR(800)
);
show tables;
-- Inserting users into the 'users' table
INSERT INTO users VALUES(1, 'Meenal', 25, 'Female', 'Pune', 'Reading, Hiking');
Insert into users values(2, 'surya', 28, 'Male', 'Bengluru', 'Movies, Travel');
Insert into users values (3, 'Charlie', 24, 'Female', 'mumbai', 'Sports, Cooking');
Insert into users values (4, 'Charan', 23, 'Male', 'pune', 'Sports, Cooking');
select * from users;
select * from matches;
drop table matches;
CREATE TABLE matches (
    username VARCHAR(90) NOT NULL,
    user_id INT,
    gender VARCHAR(50),
	location VARCHAR(500),
	interests VARCHAR(1000),
    age_ INT,
Foreign key(age_) references users(age_));
INSERT INTO matches VALUES('Mira', 4, 'Female', 'goa', 'Reading, Hiking',28);
Insert into matches values('suresh', 3, 'Male', 'kop', 'Movies, Travel',25);
Insert into matches values('mahesh', 2, 'Male', 'pune', 'Movies, Travel',24);
Insert into matches values('aayushi', 1, 'Female', 'kolkata', 'Movies, Travel',23);
update matches set location='kolkata'where username='aayushi';
update matches set location='pune'where username='mahesh';
update matches set location='kop' where username='suresh';
update matches set location='goa'where username='mira';
select* from matches;
select matches.username,users.username from users join matches on users.location=matches.location;

-- select users.username,users.age,matches.username_ from  users join matches on users.user_id=matches.user_id; 




