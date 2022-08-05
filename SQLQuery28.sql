select*from customer;
select*from orderDetails

delete from customer where custid=1; 
update customer set custid=1001 where custid=2;
create table item
(itemid int primary key,
itemname varchar(25),
price int);

drop table item

create table orderItemDetails
(orderid int,
itemid int,
qty int,
primary key (orderid,itemid),
foreign key (orderid) references orderDetails(orderid),
foreign key(itemid) references item(itemid));

use hr;
select*from countries;
select*from departments;
select*from dependents;
select*from employees;
select*from  jobs;
select*from locations;
select*from regions;

select*from employees where department_id=9 or department_id=6 or department_id=5;

select*from employees where department_id in(9,6,5);

select*from employees where department_id not in (1,2,3,4,5,6);

select*from employees where salary>10000 and job_id=5;

--find all emp who have not given phone_number

select*from employees where phone_number is null;

select*from employees where phone_number is not null;

select first_name from employees;

select distinct department_id from employees;

select top(1)*from employees;