use PB3
create table trainer
(tid int primary key,
tname varchar(20) not null,
experience int default 0,
qualification varchar(25));

create table students 
(sid int primary key,
sname varchar(20),
percentage int,
trainerid int,
constraint fktid foreign key(trainerid) references trainer(tid));
insert into students values(1,'Somesh',89,101);
insert into students values(2,'Rahul',92,102);
insert into students values(3,'Ganesh',95,103);
select*from students
select *from trainer
insert into trainer (tid,tname)
values(101,'Deepa'),(102,'Kalyani'),(103,'Kirti');
select*from trainer;

update trainer 
set experience =10,qualification='BE' where tname='Deepa';
update trainer set experience=15,qualification='BE_CSE' where  tid=102;
update trainer set experience=13,qualification='BE_IT' where tid=103;
update trainer set experience =17 where tname='Deepa';