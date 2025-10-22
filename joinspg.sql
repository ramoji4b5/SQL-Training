SELECT * FROM public.departments
ORDER BY department_id ASC 


INNER JOIN

select *from employees where department_id=9;
select *from employees as E join departments as D ON E.department_id =D.department_id;
select count(*) from employees;
select * from departments;
select count(*) from employees as E join departments as D ON E.department_id =D.department_id;
select E.first_name,E.salary,D.department_name from employees as E join departments as D ON E.department_id =D.department_id;

select E.first_name,E.salary,D.department_name from employees as E join departments as D ON E.department_id =D.department_id 
where D.department_name='Marketing';

select E.first_name,E.salary,D.department_name from employees as E join departments as D ON E.department_id =D.department_id 
where D.department_name IN('Marketing','Data Science','Sales');

--left join
select E.first_name,E.salary,D.department_name from employees as E left join departments as D ON E.department_id =D.department_id 
where D.department_name='Marketing';

select E.first_name,E.salary,D.department_name from employees as E left join departments as D ON E.department_id =D.department_id 
--where D.department_name='Marketing';

--right join

select E.first_name,E.salary,D.department_name from employees as E right join departments as D ON E.department_id =D.department_id 
--where D.department_name='Marketing';

select E.first_name,E.salary,D.department_name from employees as E right join departments as D ON E.department_id =D.department_id 
where D.department_name='Marketing';

select E.first_name,E.salary,D.department_name from employees as E right join departments as D ON E.department_id =D.department_id 
where D.department_name='Marketing' and E.salary>=5000;


--self Join Using Left Join

 select t1.first_name employee,t1.employee_id,t2.first_name,t2.manager_id manager From employees t1  right Join 
 employees t2 on t1.employee_id=t2.manager_id where t1.first_name='Emma';


SELECT e.first_name employee, m.first_name manager
FROM employees e LEFT JOIN employees m 
  ON m.employee_id = e.manager_id
ORDER BY  manager NULLS FIRST;

-- SQL FULL OUTER JOIN

 SELECT  employee_id, first_name, department_name FROM departments
 FULL outer join employees ON employees.department_id = departments.department_id;

-- Cross Join


 SELECT  employee_id, first_name, department_name FROM departments
 FULL outer join employees ON employees.department_id = departments.department_id;


 SELECT first_name,program_name FROM employees
   CROSS JOIN trainings
 ORDER BY first_name;


SELECT
  first_name, program_name FROM
employees,
trainings
ORDER BY
  first_name;