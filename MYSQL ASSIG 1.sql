DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE Location ( location_id INT AUTO_INCREMENT PRIMARY KEY,
 location_name VARCHAR(50) NOT NULL UNIQUE);
CREATE TABLE Employees (employee_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 gender CHAR(1) CHECK (gender IN ('M', 'F')),
 age INT CHECK (age >= 18),
 designation VARCHAR(50),
 salary DECIMAL(10,2),
 hire_date DATE DEFAULT (CURRENT_DATE),
 department_id INT,
 location_id INT);
 ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
 ALTER TABLE Employees MODIFY COLUMN designation VARCHAR(100);
 ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining; 
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments (department_id INT PRIMARY KEY,
 department_name VARCHAR(50) NOT NULL UNIQUE);
 
 CREATE TABLE Location (location_id INT AUTO_INCREMENT PRIMARY KEY,
 location_name VARCHAR(50) NOT NULL UNIQUE);
 
 CREATE TABLE Employees (employee_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 gender CHAR(1) CHECK (gender IN ('M', 'F')),
 age INT CHECK (age >= 18),
 designation VARCHAR(50),
 salary DECIMAL(10,2),
 hire_date DATE DEFAULT (CURRENT_DATE),
 department_id INT,
 location_id INT,
 FOREIGN KEY (department_id) REFERENCES Departments(department_id),
 FOREIGN KEY (location_id) REFERENCES Location(location_id));

