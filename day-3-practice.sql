create database Practice;
show  databases;
use Practice

create table Employee1(Emp_id int primary key, First_name varchar(10),Last_name varchar(10),Age int ,salary int not null);

CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    First_name VARCHAR(10),
    Last_name VARCHAR(10),
    Age INT,
    salary INT NOT NULL
);

insert into Employee values(1,'pravin','nangare',21,5000);

insert into Employee values(2,'om','malusare',21,6000);

select * from Employee;

-- add column phone 
alter table Employee add column phone int;

alter table Employee add constraint salCheck check (salary>=5000);

alter table Employee add constraint age check (age>20);

alter table Employee add constraint salCheckAndage check(salary>=5000 AND age>20);

-- select Employee where salary>=4000;

update Employee set  age=22 where Emp_id=1;
select * from Employee where age>=22;

-- Truncate command used to delete the all rows in table 
truncate table Employee;

select * from Employee;

-- constraint are not null , unique , null, check , default , primary key


create table Student(std_id int primary key, std_name varchar(10),age int not null, phone_no int unique );
desc student;

insert into student values(101,'pravin',21,93096587);
select * from student;

alter table student add column dept varchar(10) default 'MCA';

alter table student add column fees int ;

alter table student add constraint fee check (fess>=9000);

insert into student (std_id,std_name,age,phone_no,fees)values(4,'ram',22,23456,345);

