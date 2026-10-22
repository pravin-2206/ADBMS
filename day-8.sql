-- Join Sql queries

-- inner join
-- left join 
-- right join
-- outer join

create database basicjoin;
use basicjoin;

create table employee(emp_id int primary key, ename varchar(50));
desc employee;

insert into employee value(101,'Pravin');
insert into employee value(102,'raj');
insert into employee value(103,'om');

create table projects(project_id int primary key,pname varchar(20), emp_id int, foreign key(emp_id) references employee(emp_id));

insert into projects value(1,'proj1',101); 
insert into projects value(2,'proj1',102);
insert into projects values(3,'proj3',103);
insert into projects values(4,'proj2',103);
insert into projects values(5,'proj1',103);

select * from employee;
select * from projects;

-- only maching records will display from employee 
select * from employee join projects on employee.emp_id = projects.emp_id;

-- find ename and project name in table using inner join query 
select e.ename,p.pname from projects p inner join employee e on e.emp_id=p.emp_id;

-- left join

select e.emp_id,e.ename,p.pname from employee e left join projects p on e.emp_id=p.emp_id;

-- right join
select e.emp_id,e.ename,p.pname from projects p right join employee e on e.emp_id=p.emp_id;

insert into projects(project_id,pname) values(8,'project I');

insert into employee(emp_id,ename) values(106,'swaraj');

-- solve 
select * from employee left join projects on employee.emp_id=projects.emp_id union select * from employee right join projects on employee.emp_id=projects.emp_id;


-- display the employee name who has not been assigned any projects 

select employee.ename,projects.pname from employee lef join projects on employee.emp_id=projects.emp_id where projects.emp_id is null;
desc employee;
desc projects;