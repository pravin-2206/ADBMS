-- brgin 
-- or 
-- start transaction :
-- commit -
-- rollback 
-- savepoint
-- rollback

create database TCL;
use TCL;

create table Orders(order_id int Primary key,customer_name varchar(100),status varchar(50));
desc Orders;

set autocommit=0;
begin;

insert into Orders values(101,'Geet','Pendding');
insert into Orders values(102,'Bob','Pendding');

select * from Orders;

-- for commit 

insert into Orders values(101,'Geet','Pendding');
insert into Orders values(102,'Bob','Pendding');

select * from Orders;
commit;
rollback;

 
insert into Orders values(103,'Ram','Pendding');
insert into Orders values(104,'Raj','Pendding');
select * from Orders;
rollback;

-- rollback the data 
update Orders set customer_name='Ravi' where order_id=102;
select * from Orders;
rollback;


-- insert few orders
insert into Orders values (103,'om','Pandding');
insert into Orders values(104,'Pravin','Shipping');
savepoint sp1;
select * from Orders;

-- update one orders
update Orders set status='shipping' where order_id=103;
update Orders set status='pendding' where order_id=104;
select * from Orders;
savepoint sp2;
rollback to savepoint sp1;

-- delete orders

delete from Orders where order_id=102;
select * from Orders;
savepoint sp3;

-- we want to undo the delete but keep the update 
rollback to savepoint sp1;
select * from Orders;
rollback;

-- 




 
