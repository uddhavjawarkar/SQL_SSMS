create database PB3;
use PB3;
create table student
(sid int,
sname varchar(50),
marks int);

insert into student values(1,'Ajinkya',98,9258462535);
insert into student values(3,'Uddhav',95,9775807680);
insert into student (sid,sname) values(4,'Sameer');
select*from student;
drop table student;
--primary key is unique+not null
create table student 
(sid int primary key,
sname varchar(20) not null,
marks int,
mobile bigint
);
--drop table student
insert into student values(1,'Ajinkya',98,9258462535);
--insert into student(sid,marks,mobile) values(4,95,9775807680);
insert into student (sid,sname) values(3,'Sameer');
select*from student;

