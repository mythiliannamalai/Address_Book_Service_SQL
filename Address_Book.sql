--UC-1 Create Data base
create database Address_Book_Service;

--UC-2 create table
create table Address_Book(
First_Name varchar(50) primary key,
Last_Name varchar(50),
Person_Address varchar(50),
City varchar(50),
Person_State varchar(50),
zip int, 
Phone_Number bigint,
Email_Id varchar(20)
);

--UC-3 insert new Contacts to Address Book

insert into Address_Book(First_Name,Last_Name,Person_Address,City,Person_State,zip,Phone_Number,Email_Id) values
('Mythili','Annamalai','nadu st','Salem','Tamilnadu',636505,9790486505,'mythili@gmail.com'),
('Naveen kumar','Selvaraj','nadu st','Salem','Tamilnadu',636505,9790486506,'naveen@gmail.com'),
('Lavanya','Annamalai','JJ st','Salem','Tamilnadu',636002,9790486507,'lavnya@gmail.com'),
('Santhosh','Annamalai','JJ st','Salem','Tamilnadu',636002,9790486508,'santhosh@gmail.com'),
('Kirthana','Sathish','Ganapathi st','Kovai','Tamilnadu',636002,9790486456,'kirthana@gmail.com'),
('Sharmila','Murugan','Ganapathi st','chennai','Tamilnadu',636505,9790486509,'sharmila@gmail.com'),
('Kiruba','Selvaraj','nadu st','Rasipuram','Tamilnadu',636505,9790486509,'kiruba@gmail.com');

select * from Address_Book

--UC-4 edit existing contact person using their name

update Address_Book set Last_Name='Naveen kumar' where First_Name='Mythili'

select * from Address_Book

--UC-5 delete a person using person's name

delete Address_Book where First_Name='Kiruba'
select * from Address_Book

--UC-6 Retrieve Person belonging to a City or State from the Address Book

select First_Name from Address_Book where City='Salem';

--UC-7 size of address book by City and State

select COUNT(*) from Address_Book group by City;
select COUNT(*) from Address_Book group by Person_State; 

--UC-8 retrieve entries sorted alphabetically by Person’s name for a given city

select * from Address_Book where City='Salem' order by First_Name asc

--UC-9 identity each address book wiht name and type

Create table Contact_Type(
Name varchar(50) foreign key references Address_Book(First_Name),
Contact_Type varchar(20));

insert into Contact_Type(Name,Contact_Type) values
('Mythili','Profession'),
('Naveen kumar','Family'),
('Lavanya','Family'),
('Santhosh','Family'),
('Sharmila','Profession');
select * from Contact_Type;

