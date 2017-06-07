drop table if exists pet;
drop table if exists person;
use people;

CREATE TABLE person (
    userNum INTEGER NOT NULL,
    userName VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL,
    PRIMARY KEY (userNum)
);
insert into person values
(1, "Andrew Jones", 22);
show tables;
SELECT * FROM person;
use people;
drop table if exists person;
CREATE TABLE person (
    userNum INTEGER NOT NULL,
    userFirstName VARCHAR(255) NOT NULL,
    userLastName VARCHAR(255) NOT NULL,
    userAge INTEGER NOT NULL,
    PRIMARY KEY (userNum)); 
    
insert into person values
(0, "Andrew", "Jones", 22); 

insert into person values 
(1, 'Daylin', 'Henry', 22);



CREATE TABLE pet (
    petNum INTEGER NOT NULL,
    petName VARCHAR(255) NOT NULL,
    petBreed VARCHAR(255) NOT NULL,
    petAge INTEGER NOT NULL,
    petDead VARCHAR(1) NOT NULL,
    userNum INTEGER NOT NULL, 
    PRIMARY KEY (petNum),
    FOREIGN KEY (userNum) REFERENCES person (userNum));

insert into pet values (0, "Fluffy", "Unicorn", 1000, "y", 1);

insert into pet values (1, "Gigantor", "Robot", 1, "n", 0);

show tables;
SELECT* FROM person;
SELECT* FROM pet;
Select person.userFirstName, person.userLastName, pet.petName
from pet, person;