create database CompanyDB;
show databases;

use CompanyDB;

create table Employee(Emp_id integer primary key, Emp_name varchar(20),Salary decimal(10,2),JoinDate date);
desc Employee;

create table Department(Dept_id integer primary key, Dept_name varchar(20));
desc Department;

alter table Employee add Email varchar(100);
desc Employee;

alter table Department add dept_location varchar(10);
desc Department;

alter table Employee add Phone_no integer not null;
desc Employee;

alter table Employee modify Emp_name varchar(100);
desc Employee;


alter table Employee add primary key(Dept_id);
desc Employee;

alter table Employee add column Dept_id integer;
desc Employee;

alter table Employee add foreign key (Dept_id) references Department(Dept_id);
desc Employee;

-- not drop because it is foreign key  first drop foreign key then primary key drop
alter table Department drop primary key;
desc Department;

-- not execute 
alter table Employee drop foreign key fk_Department;


alter table Employee rename column  Emp_name to Emp_Name;
desc Employee;

alter table Employee drop column Phone_no;
desc Employee;

-- rename the table name 
-- alter table Employee rename Employee to EmployeeDetails;
alter table Employee rename EmployeeDetails;
desc EmployeeDetails;

alter table EmployeeDetails rename Employee;
desc Employee;

desc Department;
alter table Department drop primary key;

alter table Employee drop foreign key employee_ibfk_1; 
desc Employee;

alter table Department drop primary key;
desc Department;


show tables;

