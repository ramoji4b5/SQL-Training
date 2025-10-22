select first_name,round(avg(salary),2) from hr_database.employees group by first_name;

select department_id,ROUND(AVG(salary),2) from hr_database.employees group by department_id ORDER BY department_id asc;
SELECT first_name,department_id,salary
FROM hr_database.employees e1
WHERE  salary > ( SELECT AVG(salary) average_salary FROM hr_database.employees e2
    WHERE e2.department_id = e1.department_id )
ORDER BY  department_id;

SELECT first_name,department_id,salary
FROM hr_database.employees e1
WHERE  salary =( SELECT AVG(salary) average_salary FROM hr_database.employees e2
    WHERE e2.department_id = e1.department_id )
ORDER BY  department_id;

select first_name,department_id,last_name,salary from hr_database.employees where department_id=3;
select first_name,department_id,last_name,salary from hr_database.employees where department_id>=3;
select first_name,last_name, department_id,salary from hr_database.employees where salary > any (select salary from hr_database.employees
where department_id =3);
select first_name,last_name, department_id,salary from hr_database.employees where salary <> any (select salary from hr_database.employees
where department_id =2);
select first_name,last_name, department_id,salary from hr_database.employees where salary >= any (select salary from hr_database.employees
where department_id =6);
select first_name,last_name, department_id,salary from hr_database.employees where salary <= any (select salary from hr_database.employees
where department_id =6);
select first_name,last_name, department_id,salary from hr_database.employees where salary = any (select salary from hr_database.employees
where department_id =9);
select first_name,last_name, department_id,salary from hr_database.employees where salary >=all (select salary from hr_database.employees
where department_id =9);
select first_name,last_name, department_id,salary from hr_database.employees where salary >all (select salary from hr_database.employees
where department_id =2);
select first_name,last_name, department_id,salary from hr_database.employees where salary >=all (select salary from hr_database.employees
where department_id =3);
select country_name,region_id from hr_database.countries where region_id =all (select region_id from hr_database.countries
where country_id =2) 
select country_name,region_id from hr_database.countries where region_id >= all (select region_id from hr_database.countries
where country_id =3) 

SELECT first_name,last_name,department_id,salary FROM
 hr_database.employees WHERE  EXISTS (SELECT salary FROM hr_database.employees WHERE department_id = 3
  ) ORDER BY salary;
  
 select employee_id,first_name from hr_database.employees where 
NOT EXISTS ( select 2 from hr_database.dependents where dependents.employee_id=employees.employee_id); 

select employee_id,first_name from hr_database.employees where 
EXISTS ( select 2 from hr_database.dependents where dependents.employee_id=employees.employee_id); 
select employee_id,first_name from hr_database.employees where 
 EXISTS ( select 3 from hr_database.dependents where dependents.employee_id=employees.employee_id); 
