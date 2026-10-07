create database college;
use college;
create table employee(emp_id int(5),first_name varchar(20),last_name varchar(20),emp_age int(5),empZone varchar(20));
desc employee;

insert into employee values(1,'Ram','Yadav',25,'south');

select * from employee;

insert into employee values(2,'sita','sharma',23,'west');
select *from employee;

UPDATE employee SET last_name='Yadav' WHERE emp_id=1;