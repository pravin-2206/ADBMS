use company_db;
create table Employee8(Emp_id int primary key, First_name varchar(10),Last_name varchar(10),Emp_Age int,salary int);

alter table Employee8 add constraint checkAgeAndSalary check(Emp_Age>20 AND salary>5000);

desc Employee8;

-- show table Employee8;
show create table Employee8;


insert into Employee8 values(101,'Ram','Sharma',21,5001);

select * from Employee8;

alter table Employee8 drop check checkAgeAndSalary;

show create table Employee8;

alter table Employee8 add check(salary>5000);
show create table Employee8;

alter table Employee8 drop check employee8_chk_1;

show create table Employee8;

-- indexes are used to retraived data from tables 

-- apply on one column indexing
create index Demoindex on Employee8(First_name);

show indexes from Employee8;

-- apply one two column indexing 

create index Demoindex1 on Employee8(First_name,Last_name);

show indexes from Employee8;

-- select * from Demoindex1;

drop index Demoindex on Employee8;