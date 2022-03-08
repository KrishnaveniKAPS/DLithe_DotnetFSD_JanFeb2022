
--CREATING WEBAPI DATABASE
create database WebApi

use WebApi

create table UserRegistration
(
id int PRIMARY KEY IDENTITY,
Name varchar(25),
Email varchar(25),
Gender varchar(25),
Username varchar(25),
Password varchar(25)
)
select * from UserRegistration

insert into UserRegistration values('Krishnaveni','Krishna1@gmail.com','Female','Krishna','Krishna1@')
insert into UserRegistration values('Bhuvana','Bhuvana@gmail.com','Female','Bhuvanak','Bhuvana1@')