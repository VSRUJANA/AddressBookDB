-- Create a database
create database Address_Book_Service;
-- View database name
use Address_Book_Service;
select DB_NAME() 

-- Create table in the database
create table Address_Book
(
FirstName varchar(25) not null,
LastName varchar(25) not null,
Address varchar(60) not null,
City varchar(15) not null,
State varchar(15) not null,
Zipcode varchar(6) not null,
PhoneNumber varchar(12) not null,
Email varchar(25) not null
);

