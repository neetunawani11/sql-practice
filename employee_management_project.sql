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
