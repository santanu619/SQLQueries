create database payroll_service

select * from sys.databases;

use payroll_service;

select db_name(); 

create table addressbook
(
id int identity(1,1) primary key,
Firstname varchar(30) not null,
Lastname varchar(30) not null,
Address varchar(50) not null,
City varchar(30) not null,
State varchar(30) not null,
Zip varchar(10) not null,
PhoneNumber varchar(15) not null,
Email varchar(50) not null
);
