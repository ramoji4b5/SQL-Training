SELECT first_name,last_name FROM employees
WHERE job_id IN ( 
	SELECT job_id FROM jobs WHERE job_title LIKE '%Sales%');
	SELECT first_name,last_name FROM employees
WHERE job_id IN ( 
	SELECT job_id FROM jobs WHERE job_title LIKE '%Accountant%');
	
	SELECT
  ROUND(AVG(department_salary), 0) average_department_salary
FROM (SELECT department_id, SUM(salary) department_salary
    FROM employees GROUP BY department_id );
