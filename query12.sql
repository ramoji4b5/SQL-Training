select first_name,last_name,salary from hr_database.employees where salary = 5000;
select first_name,last_name,salary from hr_database.employees where salary >= 5000;
select first_name,salary from hr_database.employees where salary =(select MAX(salary) from hr_database.employees)
select first_name,salary from hr_database.employees where salary > (select AVG(salary) from hr_database.employees)
select first_name,salary from hr_database.employees where salary =(select MIN(salary) from hr_database.employees)
select first_name,last_name from hr_database.employees where job_id in ( 
	SELECT job_id FROM hr_database.jobs WHERE job_title LIKE '%Acountant%');
    
SELECT ROUND(AVG(department_salary), 0) average_department_salary
FROM (SELECT d.department_id, SUM(salary) department_salary
    FROM hr_database.employees GROUP BY d.department_id );
    
    SELECT first_name, last_name, salary, s.avg_salary
FROM hr_database.employees e
  INNER JOIN ( SELECT ROUND(AVG(salary), 0) AS avg_salary FROM hr_database.employees
  ) s ON e.salary > s.avg_salary
ORDER BY
  salary;
	