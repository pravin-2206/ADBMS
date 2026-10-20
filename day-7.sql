/* filtering data from table */
/* where , select distinct,and,or,not,in ,between,like,limit
is null */

create database organization;
use organization;

create table employee(empid int not null primary key,first_name varchar(20),last_name varchar(20),gender char,role varchar(15),dept varchar(15),manager_id varchar(10));
insert into employee values(1,'pravin','nangare','M','software','IT ',101);
insert into employee values(2,'om','Malusare','M','backend','IT-dev ',102);
insert into employee values(3,'Sujata','nangare','F','UI','IT-testing ',103);
insert into employee values(4,'harsh','thombare','M','tester','IT-test ',104);
-- insert into employee values(1,'pravin','nangare','M','software','IT ',101);

select distinct dept from employee order by dept;

select distinct role from employee order by role;  -- show only unique values do not display duplicate values

-- and operation is a logical operations 

select * from employee where role='software' and dept='IT';

select * from employee where role='backends' and dept='IT-devs';

-- or operations

select * from employee where role='software' or dept='ITs';

select * from employee where role='software' and dept='IT';

-- in operators

select * from employee where role in ('backend','IT-dev'); 

-- select * from employee where role in ('backend','hr'); 

select * from employee where role in ('manager','HR'); -- this role not in table output is null

-- not in operators
select * from employee where role not in ('backend','IT-dev'); -- display all record without this

-- between operators

alter table employee add column exprience int;
desc employee;

update employee set exprience=10 where empid=1;
update employee set exprience=19 where empid=2;
update employee set exprience=5 where empid=3;

select * from employee;

select * from employee where exprience between 6 and 15;
select * from employee where exprience between 6 and 20;
select * from employee where exprience between 1 and 5;

select * from employee where exprience=5 or exprience=10;

select * from employee where exprience=6 or exprience=1;

-- like operators

select * from employee where last_name like 'A%';

select * from employee where last_name like 'n%';

select * from employee where last_name like 'm%';

-- limit operations

select * from employee order by exprience limit 5;

-- is null 

select * from employee where manager_id is null;

select * from employee where exprience is null;

-- is not null

select * from employee where manager_id is not null;

