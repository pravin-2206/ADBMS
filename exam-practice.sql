/*Create a table EMPLOYEE with the following schema: 
(Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name,Job_id, Designation, Salary) 
Write SQL statements for the following queries. 
1. List the E_no, E_name, Salary of all employees working for MANAGER. 
2. Display all the details of the employee whose salary is more than 10000.
3. List the employees in ascending order of Designations of those who joined after 1981. 
4. List the employees along with their Experience and Daily Salary. 
5. List the employees who are either ‘CLERK’ or ‘ANALYST '. 
6. List the employees who joined on 1-MAY-1981, 3-DEC-1981, 17-DEC-1981, 19-JAN-1980. 
7. List the employees who are working for Deptno 10 or20. 
8. List the Enames that start with ‘S’. 
9. Write a SQL query to find the highest salary. Return the highest salary
10. Display the name and the first five characters of the name starting with ‘H’. List all the employees except ‘PRESIDENT’ & ‘MGR” in ascending order of Salaries.
11. Display the minimum and maximum salary and Experience of the employee.
12. Display the total salary of all employees.
13. Write a query to display the average salary of employees working in IT department.
14. Display the Distinct salary of an employee.
15. Drop the database.*/

create database examdemo;
use examdemo;
-- (Emp_no, E_name, E_address, E_ph_no, Dept_no, Dept_name,Job_id, Designation, Salary) 

create table employee1 (Emp_no int, E_name varchar(20),E_address varchar(25),E_ph_no int,Dept_no int,Dept_name varchar(25),job_id int,Designation varchar(28),salary int);
desc employee1;
rename table employee1 to employee;
-- drop table employee; -- already exit table 
desc employee;

-- 1. List the E_no, E_name, Salary of all employees working for MANAGER.
insert into employee values(1,'pravin','sangli',930938681,11,'HR',111,'Manager',25000);
insert into employee values(2,'Om','satara',930938451,12,'IT',112,'Tester',30000);
insert into employee values(3,'Harsh','sangli',942351246,11,'HR',113,'Manager',28000);
insert into employee values(4,'Swaraj','pune',93093845,14,'IT',114,'Developer',35000);
insert into employee values(5,'shripad','pune',45789654,15,'HR',115,'Manager',25000);

select E_name,Emp_no,salary from employee where designation='Manager';

-- 2. Display all the details of the employee whose salary is more than 10000.

select * from employee where salary>10000;

-- 3. List the employees in ascending order of Designations of those who joined after 1981. 

alter table employee add column joined date;
update employee set joined ='1980-12-25' where emp_no=1;
update employee set joined ='1981-1-20' where emp_no=2;
update employee set joined ='2002-06-2' where emp_no=3;
update employee set joined ='1999-12-31' where emp_no=4;
update employee set joined ='1978-10-2' where emp_no=5;

select * from employee where joined > '1981-12-31' order by designation asc;

-- 4. List the employees along with their Experience and Daily Salary. 
alter table employee add column exprience int;
update employee set exprience=10 where emp_no=1;
update employee set exprience=5 where emp_no=2;
update employee set exprience=8 where emp_no=3;
update employee set exprience=15 where emp_no=4;
update employee set exprience=11 where emp_no=5;

select exprience,salary/30 as daily_salary from employee;

-- 5  List the employees who are either ‘CLERK’ or ‘ANALYST '.
select * from employee where designation='clerk' or designation='Analyst';

select * from employee where designation in('clerk','Analyst');

-- List the employees who joined on 1-MAY-1981, 3-DEC-1981, 17-DEC-1981, 19-JAN-1980.
select * from employee where joined in('1-05-1981','3-12-1981','17-12-1981','19-01-1980','25-12-1980','1980-12-25');

-- 7. List the employees who are working for Deptno 10 or20.
select Dept_no from employee;
select * from employee where Dept_no=12 or Dept_no=14;

select * from employee where Dept_no in(11,15);

-- List the Enames that start with ‘S’. 
select E_name from employee where E_name like('s%');

-- 9 Write a SQL query to find the highest salary. Return the highest salary

-- select * from employee where max(salary) As highest_salary;
select max(salary) as Highest_salary from employee;

-- 10 Display the name and the first five characters of the name starting with ‘H’. List all the employees except ‘PRESIDENT’ & ‘MGR” in ascending order of Salaries.

select E_name, substring(E_name,1,5) as First_5_char from employee where E_name like '%h' and designation not in('president','mgr') order by salary; 

-- 11. Display the minimum and maximum salary and Experience of the employee.
select max(salary) as max_salary,min(salary) as min_salary from employee;

-- 12. Display the total salary of all employees.
select sum(salary) as total_salary from employee;

-- 13. Write a query to display the average salary of employees working in IT department.
select Dept_name,salary from employee;
select avg(salary) from employee where Dept_name='IT';

-- 14. Display the Distinct salary of an employee.
select distinct(salary) from employee; -- remove duplicate salary from table 

-- join query

create table customer (cust_id int,cust_name varchar(25),salary int);

create table payment(pay_id int, cust_id int,pay_type varchar(20));

insert into customer values(1,'pravin',23000);
insert into customer values(2,'om',40000);
insert into customer values(3,'harsh',53000);
insert into customer values(4,'swaraj',83000);
insert into customer values(5,'neel',53000);

insert into payment values(11,1,'online');
insert into payment values(12,5,'cash');
insert into payment values(13,8,'online');
insert into payment values(14,9,'online');
insert into payment values(15,15,'online');

-- inner join
select c.cust_id as cust_id,p.cust_id as pay_cust_id from customer as c inner join payment as p on c.cust_id=p.cust_id;

-- left join

select cust.cust_id,pay.cust_id from customer as cust left join payment as pay on cust.cust_id=pay.cust_id;

-- right join 

select cust.cust_id,pay.cust_id from customer as cust right join payment as pay on cust.cust_id=pay.cust_id;

-- cross join 

select cust.cust_id,pay.cust_id from customer as cust cross join payment as pay on cust.cust_id=pay.cust_id;

