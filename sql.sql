Create database EmployePayrollService;
use  EmployePayrollService;

CREATE TABLE employee_Payroll
(
EmployeeID int AUTO_INCREMENT primary key,
EmployeeName varchar(255),
PhoneNumber varchar(255),
Address varchar(255),
Department varchar(255),
Gender char(1),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate Date,
City varchar(255),
Country varchar(255)
);
