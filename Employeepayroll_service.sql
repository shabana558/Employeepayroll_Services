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
------- UC 6: Add Gender Column and Update Table Values -------
Alter table Employee_payrolls
add Gender char(1);

Update Employee_payrolls
set Gender='M'
where name='Magesh';
Update Employee_payrolls 
set Gender='F'
where name='Gayathri' or name='Shalini'or name='Aruna';
------- UC 7: Use Aggregate Functions and Group by Gender -------

select Sum(salary) as "TotalSalary",Gender from Employee_payrolls group by Gender;
select Avg(salary) as "AverageSalary",Gender from Employee_payrolls group by Gender;
select Min(salary) as "MinimumSalary",Gender from Employee_payrolls group by Gender;
select Max(salary) as "MaximumSalary",Gender from Employee_payrolls group by Gender;
select count(salary) as "CountSalary",Gender from Employee_payrolls group by Gender;
------- UC 8: Add column department,PhoneNumber and Address -------
Alter table Employee_payrolls
add EmployeePhoneNumber BigInt,EmployeeDepartment varchar(200) not null default 'Publish',Address varchar(200) default 'Not Provided';

Update Employee_payrolls 
set EmployeePhoneNumber='9842905050',EmployeeDepartment='Editing',Address='Bangalore,Karnataka'
where name='Shalini';

Update Employee_payrolls 
set EmployeePhoneNumber='10987252525',Address='Arizona,US'
where name ='Magesh';

Update Employee_payrolls 
set EmployeePhoneNumber='9600054540',EmployeeDepartment='Management',Address='Chennai,TN'
where name ='Gayathri';

Update Employee_payrolls 
set EmployeePhoneNumber='8715605050',Address='Bareilly,UP'
where name ='Aruna';