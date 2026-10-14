create database User;
use User;
create table customer(cust_id int,custname varchar(15),city varchar(10),product varchar(10),price int);
desc customer;
alter table customer modify cust_id int primary key;
-- alter table customer add primary key(cust_id);

insert into customer values(1,'raj','pune','mobile',15000
insert into customer values(2,'ram','mumbai','laptop',12000);
insert into customer values(3,'rahul','nagpur','mouse',1500);

select custname,product from customer;

select * from customer;
create table clonetable as select * from customer;
select * from clonetable;
drop table clonetable;

select custname,city from customer;
select custname,city from customer where cust_id=1;

select custname,product,price from customer where price>15000;

select custname,product,price from customer where price>=15000;
-- select * from customer where price>15000;
select * from customer ;

select * from customer where city='nagpur';

-- sorting data using order by single column

select * from customer order by price;

select * from customer order by cust_id; -- acending order 

select * from customer order by cust_id desc;  -- descending order

select * from customer order by price desc;

select * from customer order by city ;

-- two column sorting

select * from customer order by city,price;

select * from customer order by city desc,price asc;

-- case conversion function

select upper(custname),lower(product) from customer where cut_id<3;

select * from customer;

-- add column lastname
alter table customer add column lastname varchar(10);

update customer set lastname='Kumar'where cust_id=1; 
update customer set lastname='sharma'where cust_id=3; 

-- concat two column 

select concat(custname,lastname) from customer;

select concat(custname,' ',lastname) from customer;

select concat(custname,' ',lastname) as fullname from customer;

-- use of substr and instr functions

select * from customer;

select substr(custname,1,0) from customer;
select substr(custname,1,2) from customer;
select substr(custname,0,2) from customer;
select substr(custname,1,5) from customer;

select instr(custname,'a') as position from customer;
select * from customer;




