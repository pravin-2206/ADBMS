create database practice2;
use practice2;

-- (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name,Job_id, Designation, Salary) 

create table employees(Emp_no int,E_name varchar(20),E_address varchar(20),e_ph_no int(10),Dept_no int,Dept_name varchar(20),Job_id int,Designation varchar(25),salary int(8));

desc employees;
insert into employees values(1,'pravin','sangli','12546789',101,'IT',11,'backend dev',25000);
insert into employees values(2,'om','satara','12546789',102,'HR',12,'Manager',25000);
insert into employees values(3,'Harsh','sangli','12546789',103,'IT',13,'front dev',25000);
insert into employees values(4,'Swaraj','pune','12546789',104,'HR',14,'Manager',45000);
insert into employees values(5,'shripad','vanaj','12546789',105,'saless',11,'sales-ex',25000);

-- 1. List the E_no, E_name, Salary of all employees working for MANAGER. 

select Emp_no,E_name,salary from employees where designation='Manager';

-- 2. Display all the details of the employee whose salary is more than 10000.
select * from employees where salary>10000;

-- List the employees in ascending order of Designations of those who joined after 1981. 
alter table employees add column joined date;
select * from employees;
update Employees set joined = '1981-02-18' where Emp_no=1;
update Employees set joined = '1980-02-18' where Emp_no=2;
update Employees set joined = '2001-08-18' where Emp_no=3;
update Employees set joined = '1992-01-11' where Emp_no=4;
update Employees set joined = '1975-02-18' where Emp_no=5;

-- select * from employees where joined like '%1981%' order by Emp_no;
-- select * from employee where joined >to_date('1981-01-01','YYYY-MM-DD') order by Designation;
desc employees;
select * from employees where to_char(joined,'YYYY') like '1981%' order by designation;
-- select * from employees order by Emp_no ;
-- select * from employees order by Emp_no desc;
select * from employees where  E_name like'p%';  -- start with p character
select * from employees where  E_name like'%d';  -- end with d chacrater

select * from employees where  E_name like'o%m'; -- start with o and end m

select * from employees where  E_name like'_r%'; -- character in second position

select * from employees where joined like '1981%' order by Emp_no; 
-- select * from employees;

-- List the employees along with their Experience and Daily Salary. 
alter table employees add column experience int;
update employees set experience=10 where Emp_no=1;
update employees set experience=5 where Emp_no=2;
update employees set experience=11 where Emp_no=3;
update employees set experience=14 where Emp_no=4;
update employees set experience=15 where Emp_no=5;
desc employees;
select * from employees;

select experience,salary/30 from employees; -- show the daily salary in recordes that divided by 30

-- List the employees who are either ‘CLERK’ or ‘ANALYST '. 

select * from employees where designation in('clerk','analyst');

-- 6. List the employees who joined on 1-MAY-1981, 3-DEC-1981, 17-DEC-1981, 19-JAN-1980. 
select * from employees where joined in ('1-MAY-1981','3-DEC-1981','17-DEC-1981','19-JAN-1980');

-- 7. List the employees who are working for Deptno 10 or20. 
select * from employees where Dept_no in(10,20);

-- 8. List the Enames that start with ‘S’. 
select * from employees where E_name like's%';

-- 9. Write a SQL query to find the highest salary. Return the highest salary
select max(salary) from employees;

-- 10. Display the name and the first five characters of the name starting with ‘H’. List all the employees except ‘PRESIDENT’ & ‘MGR” in ascending order of Salaries.


select E_name,substring(E_name,1,5) from employees where E_name like'%h%'and E_name not in('president','mgr') order by salary;
-- select E_name ,substring(E_name,1,5) from employees where E_name like '%H%' and 
-- E_name not in('President','cleark') order by salary; 

-- 11 Display the minimum and maximum salary and Experience of the employee.

select max(salary) as max_sal, min(salary) as min_sal,min(experience) as min_exp,max(experience) as max_exp from employees; 

-- 12 Display the total salary of all employees.

select sum(salary) as total_sal from employees;

-- 13 Write a query to display the average salary of employees working in IT department.

select avg(salary) from employees where dept_name='IT';

-- 14. Display the Distinct salary of an employee.

select distinct salary from employees;

-- delete from employees where Emp_no=5;
-- select * from employees;

desc employees;
