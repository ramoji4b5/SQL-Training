-- 1. Find employees who work in the IT department
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id = 6;

-- 2. Find employees earning more than 10,000
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 10000;

-- 3. Employees hired after 1998
SELECT first_name, hire_date
FROM employees
WHERE hire_date > '1998-01-01';

-- 1. Sort employees by salary (highest first)
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- 2. Sort countries alphabetically
SELECT country_name, region_id
FROM countries
ORDER BY country_name ASC;


-- 1. Average salary by department
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

-- 2. Departments where the average salary is above 10,000
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 10000;

-- 3. Count of employees in each job
SELECT job_id, COUNT(*) AS total_employees
FROM employees
GROUP BY job_id;


