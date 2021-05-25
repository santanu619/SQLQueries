use payroll_service

create table employee_payroll_allcolumns
(
EmployeeID int identity(1,1) primary key,
EmployeeName varchar(40),
PhoneNumber varchar(12),
Address varchar(50),
Department varchar(20),
Gender char(1),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate Date,
City varchar(30),
Country varchar(30),
)

insert into employee_payroll_allcolumns values
('Santanu','6294476694','Chandrama Complex','CSE','M',800000,6000,2000,12000,680000,'2019-01-09','Bhubaneswar','India');

select * from employee_payroll_allcolumns

create table department
(
DepartmentName varchar(20),
EmployeeID int
)

ALTER TABLE employee_payroll_allcolumns
DROP COLUMN PhoneNumber;

create table phone
(
Phone varchar(12),
EmployeeID int
)

insert into department values
('CSE',1),
('Mechanical',2),
('IT',3),
('Electronics',4)

insert into phone values
('9090909090',1),
('8765487654',2),
('9876540987',3),
('8376254673',4)

select * from department
select * from phone
select * from employee_payroll_allcolumns;