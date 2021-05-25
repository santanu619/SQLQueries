create database payroll_service

select * from sys.databases;

use payroll_service;

select db_name(); 

create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start date not null
);

insert into employee_payroll values
('Billi',100000.0,'2018-08-21'),
('Terisa',200000.0,'2019-10-18'),
('Charlie',300000.0,'2021-01-21');

select * from employee_payroll;

insert into employee_payroll(name,salary,start) values
('Mark',100000,'2021-01-09');

select * from employee_payroll;

select salary from employee_payroll where name='Mark';

select * from employee_payroll where start between cast('2020-02-12' as date) and GETDATE();

alter table employee_payroll add gender char(3);

update employee_payroll set gender = 'M' where name in ('Billi','Mark');

update employee_payroll set gender='F' where name in ('Terisa','Charlie');

select sum(salary) from employee_payroll where gender = 'F';

select avg(salary), gender from employee_payroll group by gender;

select min(salary), gender from employee_payroll group by gender;

select max(salary), gender from employee_payroll group by gender;

select count(salary), gender from employee_payroll group by gender;

alter table employee_payroll add PhoneNumber int(12), Address varchar(50) default('Bhubaneswar'), Department varchar(30) not null default 'CSE';

alter table employee_payroll add Deduction int(20), TaxablePay int(20), IncomeTax int(20), NetPay int(20);

EXEC sp_RENAME 'employee_payroll.salary', 'BasicPay', 'column';