create database ss1_database_relational;

use ss1_database_relational;

create table class (
id int auto_increment primary key,
name varchar (45) not null
);
create table teacher (
id int auto_increment primary key,
name varchar (45) not null,
age int,
country varchar (45) not null
); 
