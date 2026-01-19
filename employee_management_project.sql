-- =========================================
-- Project: Employee Management System
-- Database: COMPANY
-- Description: Creating tables and inserting department data
-- =========================================

-- Create database
CREATE DATABASE COMPANY;

-- Show all databases
SHOW DATABASES;

-- Use COMPANY database
USE COMPANY;

-- -----------------------------------------
-- Create DEPARTMENTS table
-- -----------------------------------------
CREATE TABLE DEPARTMENTS (
    DEBT_ID INT PRIMARY KEY,
    DEBT_NAME VARCHAR(50)
);

-- -----------------------------------------
-- Create EMPLOYEES table
-- -----------------------------------------
CREATE TABLE EMPLOYEES (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50),
    DEPT_ID INT,
    SALARY INT,
    HIRE_DATE DATE,
    FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENTS(DEBT_ID)
);

-- -----------------------------------------
-- Insert data into DEPARTMENTS table
-- -----------------------------------------
INSERT INTO DEPARTMENTS (DEBT_ID, DEBT_NAME)
VALUES
(21, 'IT'),
(1, 'HR'),
(3, 'FINANCE'),
(4, 'DIGITAL MARKETING'),
(5, 'SALES');

-- -----------------------------------------
-- Verify inserted data
-- -----------------------------------------
SELECT * FROM DEPARTMENTS;



-- -----------------------------------------
-- Insert employee records into EMPLOYEES table
-- -----------------------------------------
INSERT INTO EMPLOYEES (EMP_ID, EMP_NAME, DEPT_ID, SALARY, HIRE_DATE)
VALUES
-- Employee from IT department
(1, 'RAHUL', 21, 60000, '2022-01-12'),

-- Employee from HR department
(2, 'SAHIL', 1, 20000, '2021-03-23'),

-- Employee from Digital Marketing department
(3, 'SIMRAN', 4, 25000, '2024-01-06'),

-- Employee from Sales department
(4, 'ANJALI', 5, 30000, '2020-09-14'),

-- Employee from Finance department
(5, 'RISHI', 3, 55000, '2023-06-11');
