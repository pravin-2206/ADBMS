-- 1.	Create a database named CompanyDB.

create database companydb;
use companydb;
-- 2.	Create a table Employees with the following columns:
-- Employees (EmpID (Integer, Primary Key), EmpName, Salary, JoinDate )

create table employees (emp_id int primary key,empname varchar(20),joindate date);

-- 3.	Create a table Departments with:
-- Departments (DeptID (Integer, Primary Key), DeptName)

create table departments(deptid int primary key,deptname varchar(25));

-- 4.	Add a column Email (VARCHAR(100)) to the Employees table.

alter table employees add column Email  varchar(100);
desc employees;

-- 5.	Add a column dept_location to the Departments table.
alter table departments add column dept_location varchar(20);
desc departments;

-- 6.	Add a NOT NULL Constraint to the Phone column

alter table employees add column phone int(10) not null;
desc employees;

-- 7.	Change the size of the EmpName column from VARCHAR (50) to VARCHAR (100).
alter table employees modify column empname varchar(50);
desc employees;

-- 8.	Drop the primary key Constraint from Departments
desc departments;
alter table departments drop primary key; 

-- 9.	Create a foreign key constraint between two tables
desc employees;

-- alter table employees add foreign key employees empid references departments(empid);
alter table departments add primary key (deptid);

alter table employees add column deptid int;

alter table employees add foreign key (deptid) references departments(deptid);

alter table employees add constraint fk_emp_dept foreign key (deptid) references departments(deptid);
desc employees;

-- 10.	Rename the column EmpName to EmployeeName.

alter table employees rename column empname to employeename;
desc employees;

-- 11.	Apply a CHECK constraint on the Age and Salary columns.
alter table employees add column age int ;
alter table employees add column salary int;

alter table employees add constraint ck_age_salarys check (age < 20 and salary>9000);

create table student(std_id int primary key, std_name varchar(20));
desc student;
create table faculty(fac_id int primary key,fac_name varchar(20),std_id int ,foreign key(std_id) references student(std_id));
desc faculty;

rename table student to students;
desc students;
rename table students to student;
desc student;

alter table student add column age int;

alter table student add constraint check_age check(age>18);

alter table student drop constraint check_age;

alter table student drop check check_age;
-- select constraint from student;
desc student;






