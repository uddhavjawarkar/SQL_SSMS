use hr;
select*from employees where phone_number is null;
select*from employees  order by salary;
select*from employees order by salary  desc;
select*from employees where department_id=9 order by salary,first_name;

--like is used with wild character for matching patterns
--% zero or more char_ exactly one

select*from employees where first_name like 's%n';

--Aggregate function-sum,count,avg,min,max

select max(salary) from employees where department_id=6;
select min(salary) from employees where department_id=6;

select max(salary) as 'maximum salary' from employees where department_id=6;
select max(salary) as 'minimum salary' from employees where department_id=6;

select sum(salary) from employees;
select avg(salary) from employees;
select count(phone_number) from employees;
select count(*) from employees;
select count(first_name) from employees; 
select count(*) from employees;--to count records

--group by and having clause

--departmentwise max salary

select max(salary) from employees group by department_id;
select department_id,max(salary) from employees group by department_id;
select department_id,min(salary) from employees group by department_id;
select department_id,count(*) from employees group by department_id;


--select pin_code,count(*) from hotel group by pin_code;
select department_id,count(*) from employees group by department_id having COUNT(*)>=5;

--subquery--query within query is called subquery

select*from employees where department_id= 
(select department_id from departments where department_id)
select*from employees
select*from employees where job_id=(select job_id from jobs where job_title='programmer');

select*from employees where manager_id in(select manager_id from jobs where manager_id=102);
