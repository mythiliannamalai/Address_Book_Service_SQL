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