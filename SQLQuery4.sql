use PB3;

create table emp
(empid int,
FirstName varchar(50),
LastName varchar(50),
dept varchar(20),
salary int);
--drop table emp
insert into emp values(101,'Manoj','Diwan','Developer',33000);
insert into emp values(102,'SUd','Madhvan','Testing',25000);
insert into emp values(103,'Abhi','Koli','QA',27000);
insert into emp values(104,'Ritul','Kangna','Designer',35000);
insert into emp values(105,'Pritam','Sharma','UI',65000);
select*from emp;
--alter table Emp where FirstName

create table Book
(bookid int primary key,
bookname varchar(50) not null,
author varchar(30),
price int );
select*from Book
drop table Book
insert into Book values(1,'The Monk Who Sold His Ferrary','Monk',60);
insert into Book values(2,'The Discovery of India','Pandit Jawaharlal Nehru',750);
insert into Book values(3,'The Secret of Success','Shiv Khera',120);
insert into Book values(4,'The Power of Your Subconcious Mind','Audrey',150);
insert into Book values(5,'Wings of Fire','APJ Abdul Kalam',180);

alter table Book Add  publisher varchar(20);
--alter table Book