use PB3

select GETDATE();

select DATEPART(month,getdate());
select DATEDIFF(mm,'2013-03-14',getdate());
select DATEDIFF(year,'1998-02-06',getdate());

use hr
select first_name, upper(last_name) from employees;
select len('    deepa    '),len(trim('deepa         '));

select CONCAT('Mr ',first_name,' ',last_name) as Fullname from employees;

select SUBSTRING('thinkquotient',3,5);

select CHAR(65);

select ASCII('a');

--Union -> Duplicate
--Union all-> 
use PB3
select*from emp
select empid,FirstName from emp
union 
select eid,ename from empp