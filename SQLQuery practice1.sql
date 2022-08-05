create database Test1
use Test1
create table TestTable
(
emp_id int,
last_name varchar(50) not null,
first_name varchar(50) not null,
);
alter table TestTable add  Age int not null;
alter table TestTable add mobile_no int not null;
alter table TestTable drop column mobile_no;
alter table TestTable drop column Age;
alter table TestTable alter column emp_id char(10);
alter table TestTable alter column emp_id int


alter table TestTable drop column age;
 insert into TestTable(emp_id,last_name,first_name) values(101,'Jawarkar','Uddhav');
 alter table TestTable add age int;
 select*from TestTable;
 insert into TestTable values(102,'Jawarkar','Vishal',23);
 update TestTable set age=25 where emp_id=101;
 select*from TestTable
 insert into TestTable values(105,'Sena','John',54);
 insert into TestTable values(104,'Roy','Amey',26);
 insert into TestTable values(106,'Khatri','Ashok',28);
 insert into TestTable values(107,'Banga','Rajju',29);
 insert into TestTable values(108,'Singh','Sushma',35);
 insert into TestTable values(109,'Mhetre','Baburao',45);
 
 select top(5) first_name,last_name from TestTable;

 select emp_id,age as Age from TestTable;
 select distinct * from TestTable;
 select *from TestTable

create table emp
( emp_id int primary key,
l_name varchar(50) not null,
f_name varchar(50) not null,
);

create table emp1
(emp_id int,
l_name varchar(50) not null,
f_name varchar(50) not null,
constraint emp_pk primary key(emp_id));

create table product
(prod_id int primary key,
prod_name varchar(50) not null,
category varchar(25));

create table Orders
(order_id int primary key,
prod_id int not null,
quantity int,
 
 constraint fk_product_id
 foreign key (prod_id)
 references product(prod_id)
 );
  
 