SELECT ROUND(AVG(salary),2) average_salary FROM employees 

SELECT first_name,salary,
  (SELECT ROUND(AVG(salary),2) average_salary FROM employees ),abs((salary -(SELECT ROUND(AVG(salary),2) average_salary FROM employees ))) as diff
FROM employees ORDER BY salary;
SELECT ROUND(SUM(salary),2) average_salary FROM employees 

SELECT first_name,salary,
  (SELECT ROUND(MIN(salary),2) average_salary FROM employees ),abs((salary -(SELECT ROUND(MIN(salary),2) average_salary FROM employees ))) as diff
FROM employees ORDER BY salary;

SELECT
  ROUND(AVG(S.department_salary), 0) average_department_salary
FROM (SELECT department_id, SUM(salary) department_salary
    FROM employees GROUP BY department_id ) as S;
select round(avg(salary),2) from employees group by (department_id) 

select S.first_name,S.last_name From (select first_name,last_name,phone_number,email from employees)as S
where S.first_name like ('S%');	

SELECT first_name, last_name, salary, s.avg_salary
FROM  employees e
  INNER JOIN ( SELECT ROUND(AVG(salary), 2) AS avg_salary FROM employees
  ) s ON e.salary > s.avg_salary
ORDER BY
  salary;
	



