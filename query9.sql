----Grouping rows

SELECT department_id FROM hr_database.employees GROUP BY department_id ORDER BY department_id;
select first_name from hr_database.employees group by department_id,first_name;
SELECT DISTINCT department_id FROM hr_database.employees ORDER BY department_id;
SELECT department_id,COUNT(employee_id) headcount FROM hr_database.employees GROUP BY department_id;
SELECT department_name,COUNT(employee_id) headcount,e.department_id FROM hr_database.employees e
  INNER JOIN hr_database.departments d ON d.department_id = e.department_id
GROUP BY department_name,e.department_id;
SELECT department_name, COUNT(employee_id) headcount FROM
 hr_database.employees e INNER JOIN hr_database.departments d ON d.department_id = e.department_id
GROUP BY department_name HAVING COUNT(employee_id) > 5
ORDER BY headcount DESC;

SELECT department_name,MIN(salary) min_salary,MAX(salary) as max_salary,ROUND(AVG(salary), 2) average_salary
FROM hr_database.employees e INNER JOIN hr_database.departments d ON d.department_id = e.department_id
GROUP BY department_name
having MAX(salary) > 5000;
select department_name,SUM(salary)
from hr_database.employees e inner join hr_database.departments d on e.department_id = d.department_id
group by department_name;

SELECT manager_id, count(employee_id) direct_reports
FROM hr_database.employees WHERE manager_id IS NOT NULL
GROUP BY manager_id HAVING COUNT(employee_id) >= 5
ORDER BY direct_reports;
SELECT department_id,SUM(salary) total_salary FROM hr_database.employees
GROUP BY department_id HAVING SUM(salary) BETWEEN 20000 AND 30000
ORDER BY total_salary;
SELECT e.department_id,department_name,SUM(salary) total_salary FROM hr_database.employees e 
inner join hr_database.departments d on e.department_id=d.department_id
GROUP BY e.department_id,department_name HAVING SUM(salary) BETWEEN 20000 AND 30000
ORDER BY total_salary;
SELECT department_name,MIN(salary) min_salary FROM
 hr_database.employees e INNER JOIN hr_database.departments d ON d.department_id = e.department_id
GROUP BY department_name HAVING MIN(salary) >= 10000 ORDER BY  MIN(salary);

SELECT department_name,ROUND(AVG(salary), 2) average_salary FROM
 hr_database.employees e INNER JOIN hr_database.departments d ON d.department_id = e.department_id
GROUP BY department_name HAVING AVG(salary) BETWEEN 5000 AND 7000
ORDER BY average_salary;
