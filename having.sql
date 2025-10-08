SELECT manager_id, count(employee_id) direct_reports
FROM employees WHERE manager_id IS NOT NULL
GROUP BY manager_id HAVING COUNT(employee_id) >= 5
ORDER BY direct_reports;

-- HAVING with SUM function
SELECT department_id,SUM(salary) total_salary FROM employees
GROUP BY department_id HAVING SUM(salary) BETWEEN 20000 AND 30000
ORDER BY total_salary;


SELECT e.department_id,department_name,SUM(salary) total_salary FROM employees e 
inner join departments d on e.department_id=d.department_id
GROUP BY e.department_id,department_name HAVING SUM(salary) BETWEEN 20000 AND 30000
ORDER BY total_salary;

-- HAVING with MIN
SELECT department_name,MIN(salary) min_salary FROM
  employees e INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY department_name HAVING MIN(salary) >= 10000 ORDER BY  MIN(salary);

-- HAVING clause with AVG
SELECT department_name,ROUND(AVG(salary), 2) average_salary FROM
  employees e INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY department_name HAVING AVG(salary) BETWEEN 5000 AND 7000
ORDER BY average_salary;
