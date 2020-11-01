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

-- Display table details
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'Address_Book';
-- Inserting data in table
insert into Address_Book values
('Tony','Stark','Stark Tower, 59th Street, Broadway','Manhattan','NewYork','100001','8987224534','ironman@gmail.com'),
('Steve','Rogers','Times Square','Brooklyn','Texas','11224','9876778434','captainAmerica@yahoo.com'),
('Bruce','Banner','Vandalia','Greater Dayton','Florida','45441','1403425611','incredibleHulk@gmail.com'),
('Peter','Parker','20 Ingram Street, Forest Hills, Queens','NewYork City','NewYork','10023','4013224355','spiderman@gmail.com'),
('Stephen','Strange','177A Bleecker Street, Greenwich Village','Manhattan','NewYork','10431','6300964579','drStrange@yahoo.com'),
('Thor','Odinson','RoyalPalace','Asgard','Florida','224','7849876734','thor@rediffmail.com'),
('Natasha','Romanoff','Broadway street','NewYork City','NewYork','10028','45667365277','blackwidow@gmail.com'),
('Pepper','Potts','Stark Tower, 59th Street, Broadway','Manhattan','NewYork','100001','8987224534','pepper@gmail.com'),
('Edwin','Jarvis','Avengers Mansion, 890 Fifth Avenue', 'Manhattan', 'Texas','112','67676886','jarvis@gmail.com'),
('Howard','Stark','Richford','Manhattan','NewYork','100001','9876543256','stark@yahoo.com');
-- View AddressBook table
select* from Address_Book;

-- Edit existing contact using persons's name
update Address_Book
set PhoneNumber = '7654567885',Zipcode='534260' where FirstName = 'Bruce';
select* from Address_Book;

-- Delete contact using person's name
delete Address_Book
where FirstName = 'Howard';
select* from Address_Book;

-- Retrieve contacts belonging to City or state from Address_Book
select * from Address_Book
where City = 'NewYork City' or State = 'Florida';

-- Count contacts by City in Address_Book  
select City,count(City) from Address_Book group by City;
-- Count contacts by State in Address_Book  
select State,count(State) from Address_Book group by State;

-- Sort contacts by first name for a given city
select * from Address_Book
where City = 'Manhattan'
order by FirstName asc;