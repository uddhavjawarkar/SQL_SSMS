use hr;

select*from employees;
select*from employees where salary>15000;
select*from employees where department_id=3 or department_id=6 or department_id=9;
--or

select*from employees where department_id not in (3,6,9);

--emp-->salary>10000 and work in 6 department

select*from employees where salary>10000 and department_id=6;

select*from employees where salary>=10000 and salary<=20000;

--or

select*from employees where salary between 10000 and 20000;

select*from employees where phone_number is null;

select*from employees where phone_number is not null;

--patterns in string we have 2 wild character % _ like

select*from employees where first_name='steven';

select*from employees where first_name like 's%n';

select*from employees where first_name like '__a__';

