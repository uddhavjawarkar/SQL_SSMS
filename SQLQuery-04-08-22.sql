use PB3
create table empp
(eid int primary key identity(101,1),
ename varchar(30) not null,
mobile bigint);

insert into empp(ename,mobile) values ('Ajinkya',9587654122);
insert into empp(ename,mobile) values ('Vaibhav',8866445511);
select*from empp;

--security reasons
--complex query u require frequently u store in view 
create unique nonclustered index idxmb on empp(mobile)
where mobile is not null;
insert into empp(ename) values('Sapna');

--drop table empp;
select*from thinkemp;

create view vktemp
as select empid,ename from thinkemp;
select*from vktemp;

insert into vktemp values(9,'Sonali');
delete from vktemp where empid=3;

--complex u cant insert/update/delete
select*from students
create view vk2
as select trainerid,count(*) as count from students group by trainerid;

select*from vk2

--craete view vk3
--as select sname,p.batchid,batchname from stud s inner join batch b on s.BATCHID=b.BATCHID;
select*from students
begin try
	begin tran	
	update students set percentage=90;
insert into students values (4,'Leena',94,104);
insert into students values (5,'Radha',92,105);
commit tran;
end try

begin catch
select ERROR_MESSAGE();
rollback tran;
end catch;

--TRUNCATE
--DELETE

select * into temp_emp from thinkemp;

truncate table temp_emp;--identity reset

delete from temp_emp where salary is null;
truncate table empp;

insert into 
