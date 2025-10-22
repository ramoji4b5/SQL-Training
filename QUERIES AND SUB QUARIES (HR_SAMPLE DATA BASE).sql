🔹 1️⃣ Basic Queries (Simple SELECT Statements)
Query 1: List all employees who work in the IT department

SELECT e.first_name, e.last_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

✅ Query 2: Find all employees hired after 1998

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1998-01-01';

✅ Query 3: Show employees earning more than ₹10,000

SELECT first_name, last_name, salary
FROM employees
WHERE salary > 10000;

✅ Query 4: List job titles with a maximum salary greater than ₹15,000

SELECT job_title, max_salary
FROM jobs
WHERE max_salary > 15000;

✅ Query 5: Display all employees along with their department and job title

SELECT e.first_name, e.last_name, d.department_name, j.job_title
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id;

🔹 2️⃣ Subqueries (Nested SELECT Statements)

Subqueries are queries inside another query — used to filter, compare, or aggregate results.

✅ Subquery 1: Find employees who earn more than the average salary

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


🧠 Here the inner query (SELECT AVG(salary) …) returns the average salary,
and the outer query lists employees earning more than that.

✅ Subquery 2: List employees who work in departments located in the ‘United States of America’

SELECT first_name, last_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id IN (
        SELECT location_id
        FROM locations
        WHERE country_id = (
            SELECT country_id FROM countries WHERE country_name = 'United States of America'
        )
    )
);


🧩 A multi-level subquery linking employees → departments → locations → countries.

✅ Subquery 3: Find the highest-paid employee

SELECT first_name, last_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

✅ Subquery 4: List departments where the average salary is above ₹10,000

SELECT department_name
FROM departments
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(salary) > 10000
);

✅ Subquery 5: Find employees who earn more than their managers

SELECT e.first_name, e.last_name, e.salary, e.manager_id
FROM employees e
WHERE e.salary > (
    SELECT salary FROM employees m WHERE m.employee_id = e.manager_id
);


💡 Compares each employee’s salary to their manager’s.

✅ Subquery 6: Show dependents of employees who work in the ‘Finance’ department

SELECT d.first_name AS dependent_name, d.last_name AS dependent_last
FROM dependents d
WHERE d.employee_id IN (
    SELECT e.employee_id
    FROM employees e
    JOIN departments dept ON e.department_id = dept.department_id
    WHERE dept.department_name = 'Finance'
);

✅ Subquery 7: Find all countries that belong to the same region as ‘India’

SELECT country_name
FROM countries
WHERE region_id = (
    SELECT region_id FROM countries WHERE country_name = 'India'
);

✅ Subquery 8: Display employees who are the only ones in their department

SELECT first_name, last_name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING COUNT(employee_id) = 1
);