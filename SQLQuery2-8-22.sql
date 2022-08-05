use hr
--JOINS
--CROSS JOIN
--INNER JOIN
--OUTER JOIN ->LEFT,RIGHT,FULL JOIN
--SELF JOIN
--
SELECT*from employees cross join departments
select first_name,department_name from employees inner join departments
on departments.department_id=employees.department_id;

select*from jobs

select first_name,job_title from employees e inner join jobs j
on e.job_id=j.job_id;

 select*from employees
 select*from departments
 select*from jobs

 --list all departmentname alomng withvno of people working in it
 select department_name,count(*) from departments d inner join employees e
 on d.department_id=e.department_id group by department_name;

 --select record no of person>4
 select department_name,count(*) from departments d inner join employees e
 on d.department_id=e.department_id group by department_name
 having count(*)>=4;

 use PB3
 select*from students
 select*from students s left join trainer t 
 on s.trainerid=t.tid;

 select*from students s right join trainer t 
 on s.trainerid=t.tid;

 select*from students s full outer join trainer t on
 s.trainerid=t.tid;

 select*from students s inner join trainer t
 on t.tid=s.trainerid;