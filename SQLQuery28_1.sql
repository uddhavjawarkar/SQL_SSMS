use PB3

create table customer
(custid int primary key,
cname varchar(20),
city varchar(20),
mobile bigint);

create table orderDetails
(orderid int primary key,
orderdate date,
custid int,
constraint fkcid foreign key(custid) references customer(custid) on delete set null on update cascade);
 insert into customer values(