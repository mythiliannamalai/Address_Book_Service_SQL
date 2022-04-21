--UC-1 Create Data base
create database Address_Book_Service;

--UC-2 create table
create table Address_Book(
First_Name varchar(50),
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
