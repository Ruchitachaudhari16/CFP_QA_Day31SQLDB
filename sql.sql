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
select * from employee_Payroll;

-- Select BasicPay for the employee named 'Nikita Sharma'
SELECT BasicPay FROM employee_Payroll WHERE EmployeeName = 'Nikita Sharma';

-- Select all columns for employees who joined between '2018-01-01' and the current date
SELECT * FROM employee_Payroll WHERE StartDate BETWEEN CAST('2018-01-01' AS DATE) AND CURDATE();

DESC employee_Payroll;
-- set gender for employee Ruchita Chaudhari.
UPDATE employee_Payroll
SET Gender = 'F'
WHERE EmployeeName = 'Ruchita Chaudhari' AND EmployeeID = 123; -- Replace 123 with the actual EmployeeID

SELECT SUM(BasicPay) from employee_Payroll WHERE Gender='M' GROUP BY Gender='F';
SELECT MIN(NetPay) from employee_Payroll WHERE Gender='M';
SELECT MAX(Tax) from employee_Payroll WHERE Gender='M';
SELECT AVG(Deductions) from employee_Payroll WHERE Gender='M';
SELECT COUNT(Tax) from employee_Payroll WHERE Gender='M';

-- UC 11
CREATE TABLE Employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeName VARCHAR(255),
    PhoneNumber VARCHAR(255) NOT NULL,
    Address VARCHAR(255) DEFAULT 'Not provided',
    Gender CHAR(1),
    BasicPay FLOAT,
    Deductions FLOAT,
    TaxablePay FLOAT,
    Tax FLOAT,
    NetPay FLOAT,
    StartDate DATE,
    City VARCHAR(255),
    Country VARCHAR(255)
);

CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(255) NOT NULL
);

CREATE TABLE EmployeeDepartment (
    EmployeeID INT,
    DepartmentID INT,
    PRIMARY KEY (EmployeeID, DepartmentID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

INSERT INTO EmployeeDepartment (EmployeeID, DepartmentID)
VALUES
(
    (SELECT EmployeeID FROM Employee WHERE EmployeeName = 'Terissa'),
    (SELECT DepartmentID FROM Department WHERE DepartmentName = 'Sales and Marketing')
);

