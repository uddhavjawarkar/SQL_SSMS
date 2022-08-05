use PB3;

create table thinkemp
(empid int primary key,
ename varchar(20) not null,
salary int,
mrgid int
);

alter table thinkemp
add constraint fkmgrid foreign key(mrgid) references thinkemp(empid);

select*from thinkemp;

select e1.ename 'EmpName', e2.ename 'Manager'
from thinkemp e1 inner join thinkemp e2 on e1.mrgid=e2.empid;
--Self Join
select m.ename, count(*) from thinkemp e inner join thinkemp m
on e.mrgid=m.empid group by m.ename having count(*)>=2;

--delete all students having batch as Apple
--delete from students where BATCHID in (select BATCHID from BATCH where BATCHNAME='Apple');
--delete table_name/aliasname from table 1 

--delete s from stud s inner join BATCH b on s.BATCHID=b.BATCHID  where BATCHNAME='Apple';

--Update with join    
use hr;
update employees
set salary=salary+10000
where department_id=(select department_id from departments where department_name='Executive');

update employees
set salary=salary+10000
from employees e inner join  departments d
on e.department_id=d.department_id
where department_name='Executive';
select*from employees;

use PB3
select*from students;

--Corelated Queries
select*from customer;
select*from emp;

select*from customer where custid in(select custid from Service_Request sr1 where
not exists (select custid from Service_Request sr2 where sr2.cust_id=sr1.cust_id and 
Emp_id=(select Emp_id from emp where cname='John');

use hr
--display all employees whose salary 
select*from employees e1 where salary>=(select avg(salary) from 
employees e2 where e2.department_id=e1.department_id);

--find 5th maxsalary from emp
select top(5) * from employees order by salary desc 

select distinct salary from employees order by salary desc offset 4 rows fetch next 1 row only;

select * from employees e1 where 1=1;
select*from employees e1 where 5=(select distinct(count(*)) from employees e2 
where e2.salary>=e1.salary);

select rownum, * from (select*,