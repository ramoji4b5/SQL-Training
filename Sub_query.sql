--subquery in the WHERE 


SELECT first_name, salary FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT first_name,salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees) ORDER BY salary;

--Subquery with the IN operator

SELECT first_name,last_name FROM employees
WHERE job_id IN ( 
	SELECT job_id FROM jobs WHERE job_title LIKE '%Sales%');
	
--Subquery in the SELECT clause
SELECT first_name,salary,
  (SELECT ROUND(AVG(salary),2) average_salary FROM employees )
FROM employees ORDER BY salary;

--Subquery in the FROM clause
SELECT
  ROUND(AVG(department_salary), 0) average_department_salary
FROM (SELECT department_id, SUM(salary) department_salary
    FROM employees GROUP BY department_id );
	
-- Subquery in the INNER JOIN clause

SELECT first_name, last_name, salary, s.avg_salary
FROM  employees e
  INNER JOIN ( SELECT ROUND(AVG(salary), 0) AS avg_salary FROM employees
  ) s ON e.salary > s.avg_salary
ORDER BY
  salary;
	

