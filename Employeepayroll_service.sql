
------- UC 9: Rename Salary to Basic Pay and Add Deduction,Taxable pay, Income Pay , Netpay -------

EXEC sp_RENAME 'Employee_payrolls.Basic Pay' , 'BasicPay', 'COLUMN'
Alter table Employee_payrolls
add Deduction float,TaxablePay float, IncomeTax float,NetPay float,BasicPay float;
Update Employee_payrolls 
set Deduction=1000
where Gender='F';
Update Employee_payrolls 
set Deduction=2000
where Gender='M';
update Employee_payrolls
set NetPay=(BasicPay - Deduction)
update Employee_payrolls
set TaxablePay=0,IncomeTax=0
select * from Employee_payrolls;

------- UC 10: Adding another Value-------

Insert into Employee_payrolls(name,BasicPay,StartDate,Address,EmployeePhoneNumber,EmployeeDepartment) values ('Terisa',250000,'2019-04-20','Chennai,TN','9600054540','Editing');
select * from Employee_payrolls;