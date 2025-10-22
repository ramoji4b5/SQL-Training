(INNER JOIN )

Example 1 – Employees with their Department Names

SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name
FROM employees e
INNER JOIN departments d
       ON e.department_id = d.department_id;

Example 2 – Employees with their Job Titles	   

	   SELECT e.first_name,
       e.last_name,
       j.job_title,
       j.min_salary,
       j.max_salary
FROM employees e
INNER JOIN jobs j
       ON e.job_id = j.job_id;

(LEFT JOIN)

Example 1 – All Departments (even those with no employees)

SELECT d.department_id,
       d.department_name,
       e.first_name,
       e.last_name
FROM departments d
LEFT JOIN employees e
       ON d.department_id = e.department_id;

Example 2 – All Employees with or without Managers

SELECT e.first_name AS Employee,
       m.first_name AS Manager
FROM employees e
LEFT JOIN employees m
       ON e.manager_id = m.employee_id;

(RIGHT JOIN)

Example 1 – All Departments (ensure right table = departments)

SELECT e.first_name,
       e.last_name,
       d.department_name
FROM employees e
RIGHT JOIN departments d
       ON e.department_id = d.department_id;

	   
FULL JOIN (or FULL OUTER JOIN)

Example 1 – All Employees and All Departments

-- Works directly in PostgreSQL / Oracle:
SELECT e.first_name,
       e.last_name,
       d.department_name
FROM employees e
FULL JOIN departments d
       ON e.department_id = d.department_id;



