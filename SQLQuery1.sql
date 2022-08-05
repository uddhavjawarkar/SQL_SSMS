use PB1;
create table trainer
(tid int primary key,
tname varchar(20) not null,
exper int check(exper>=0),
mobile bigint unique,
city varchar(25) default 'Pune'); 

insert into trainer values(1,'Golu',2,7775807680,'Pune');

insert into trainer(tid,tname)values(2,'Kirti');

select tid,tname,mobile from trainer;

select *from trainer;
update trainer set exper=15,city='Mumbai'where tid=1;
update trainer set tname='Uddhav' where tid=1;