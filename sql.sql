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

INSERT INTO employee_Payroll
(
    EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country
)
VALUES
(
    'Ruchita Chaudhari','123-456-7890','123 Main St','HR','M',50000.00,5000.00,45000.00,5000.00,40000.00,'2024-01-25','New York','USA'
);

INSERT INTO employee_Payroll
(
    EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country
)
VALUES
(
    'Nikita Sharma','123-456-7890','123 Main St','HR','M',50000.00,5000.00,45000.00,5000.00,40000.00,'2024-01-25','New York','USA'
);