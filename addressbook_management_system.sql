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

insert into addressbook values
('Santanu','Mohapatra','Chandrama Complex,Kharabela Nagar','Bhubaneswar','Odisha','751001','6294476694','mohapatra.santanu123@gmail.com'),
('Sasmita','Dash','Chandrama Complex,Kharabela Nagar','Bhubaneswar','Odisha','751001','9090223112','dash.sasmita123@gmail.com'),
('Anindita','Dash','Electronic City','Bengaluru','Karnataka','568687','8478567843','aninditadash@gmail.com'),
('Nihar Ranjan','Mishra','Electronic City','Bengaluru','Karnataka','568687','8790987654','niharranjanmishra@gmail.com'),
('Anshumaan','Dash','VIP Road','Puri','Odisha','763011','8280946694','anshumaandash@outlook.com')