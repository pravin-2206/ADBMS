create database Institute;

use Institute;

show databases;
create table Staff(staff_id int(10),first_name varchar (25),last_name varchar(25),DOB date,dept_id int(5));

desc Staff;


create table Department(dept_id int(5),dept_name varchar(20),dept_laocation varchar(25));

desc Department;

alter table Staff add location varchar(20);

alter table Staff add Joining_year int(5);

desc Staff;

alter table Staff add age int(5), add contact_no int(10);
desc Staff;

alter table Staff modify last_name text;

alter table Staff drop contact_no;

desc Staff;

alter table Staff add primary key (staff_id);

show databases;
use institute;

alter table Staff add primary key (staff_id);
desc Staff;

alter table Department add primary key (dept_id);
desc Department;


-- syntax
-- alter table table_name  add foreign key (column name) references 2 table name(coloumn name);
alter table Staff add foreign key(dept_id) references Department(dept_id);

-- another method foreign key

-- alter table Staff add constraint Fk_Staff_Department foreign key (dept_id)references Department(dept_id);

desc Staff;

-- update table name 

alter table Staff rename Staff1;
desc Staff1;

-- or  rename 

rename table Staff1 to Staff;

desc Staff;

-- change name of column 
alter table Staff rename column first_name to FIRST_NAME;
desc Staff;

alter table Staff rename column FIRST_NAME TO first_name;
desc Staff;

-- drop 
-- not drop department because of parent are Staff
drop table Department;

drop table Staff;

drop table Department;

drop database institute;

