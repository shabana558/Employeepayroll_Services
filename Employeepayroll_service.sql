--UC-1 creating database
create database EmployeeServices;
--UC-2 creating Table
create Table Employee_payrolls
(
id int identity(1,1) primary key,
name varchar(200) not null,
salary float,
startDate date
)
--UC-3 Insert values in Table
Insert into Employee_payrolls(name,salary,startDate) values
('shalini',20000,'2021-03-12'),
('Magesh',25000,'2021-04-18'),
('Gayathri',10000,'2020-05-13'),
('Aruna',30000,'2020-08-19');
select * from Employee_payrolls;
--UC-4 Retrieve All data--
select * from Employee_payrolls;
------- UC 5: Select Query using Cast() an GetDate() -------
select salary from Employee_payrolls where name='Magesh';
select salary from Employee_payrolls where startDate BETWEEN Cast('2020-12-20' as Date) and GetDate();