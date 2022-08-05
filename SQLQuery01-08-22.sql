use PB3;

create table Service_Request
(Service_Id int  not null,
cust_id int not null, service_desc varchar(20),
request_open_date date,
status_id int primary key,
Emp_id int not null,request_closed_date date,charges int);

--drop table Service_Request
select*from Service_Request;
insert into Service_Request values(1,101,'IT','2002-01-22',7,401881,'2002-02-04',1000);
insert into Service_Request values(5,105,'CSE','2002-02-22',5,401882,'2002-03-04',1500);
insert into Service_Request values(2,102,'ME','2002-03-10',2,401885,'2002-03-15',2200);
insert into Service_Request values(3,103,'CE','2002-04-15',3,401883,'2002-04-20',1750);
insert into Service_Request values(4,104,'EE','2002-05-27',1,401884,'2002-06-03',2170);
select*from Service_Request order by Service_Id;
--alter table Service_Request  where status_id=5 
update  service_request set status_id=4 where status_id=7;


create table Service_Status
(Status_Id int primary key,
desc_id int,
desc_status varchar(20),
foreign key(Status_Id) references Service_Request(status_id)
);
select*from Service_Status;
select*from Service_Request;

--DROP TABLE Service_Status;

insert into Service_Status values(1,11,'OPEN');
insert into Service_Status values(2,12,'IN_PROGRESS');
insert into Service_Status values(3,13,'CLOSED');
insert into Service_Status values(4,14,'CANCEL');
insert into Service_Status values(5,15,'IN_PROGRESS');

create table Employee
(Emp_Id int primary key,name varchar(20),age int,
requests_Completed varchar(10),
emp_rating int default 1,
foreign key(Emp_Id) references Service_Request(Emp_id)
);
--drop table Employee;
select*from Employee;
insert into Employee values(
