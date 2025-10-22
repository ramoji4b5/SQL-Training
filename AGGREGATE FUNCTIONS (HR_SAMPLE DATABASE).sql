COUNT()

Example 1 – Count Total Employees

SELECT COUNT(*) AS total_employees
FROM employees;


✅ Example 2 – Count Employees in Each Department

SELECT department_id,
       COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department_id;


✅ Example 3 – Count Jobs per Department

SELECT d.department_name,
       COUNT(e.job_id) AS jobs_count
FROM employees e
JOIN departments d
     ON e.department_id = d.department_id
GROUP BY d.department_name;

SUM()

Example 1 – Total Salary of All Employees

SELECT SUM(salary) AS total_salary
FROM employees;


✅ Example 2 – Total Salary per Department

SELECT d.department_name,
       SUM(e.salary) AS total_department_salary
FROM employees e
JOIN departments d
     ON e.department_id = d.department_id
GROUP BY d.department_name;

📊 3️⃣ AVG() — Average Value

✅ Example 1 – Average Employee Salary

SELECT AVG(salary) AS average_salary
FROM employees;


✅ Example 2 – Average Salary per Job Role

SELECT j.job_title,
       AVG(e.salary) AS avg_salary
FROM employees e
JOIN jobs j
     ON e.job_id = j.job_id
GROUP BY j.job_title;

🔽 4️⃣ MIN() and MAX() — Lowest and Highest Values

✅ Example 1 – Find Minimum and Maximum Salary

SELECT MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary
FROM employees;


✅ Example 2 – Salary Range per Department

SELECT d.department_name,
       MIN(e.salary) AS min_salary,
       MAX(e.salary) AS max_salary
FROM employees e
JOIN departments d
     ON e.department_id = d.department_id
GROUP BY d.department_name;

🧠 5️⃣ GROUP BY + HAVING Clause

✅ Example 1 – Departments with More Than 3 Employees

SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees
FROM employees e
JOIN departments d
     ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 3;


✅ Example 2 – Jobs with Average Salary Above 10000

SELECT j.job_title,
       AVG(e.salary) AS avg_salary
FROM employees e
JOIN jobs j
     ON e.job_id = j.job_id
GROUP BY j.job_title
HAVING AVG(e.salary) > 10000;

🧾 6️⃣ Combining Aggregates

✅ Example – Salary Summary per Department

SELECT d.department_name,
       COUNT(e.employee_id) AS total_employees,
       SUM(e.salary) AS total_salary,
       AVG(e.salary) AS avg_salary,
       MIN(e.salary) AS min_salary,
       MAX(e.salary) AS max_salary
FROM employees e
JOIN departments d
     ON e.department_id = d.department_id
GROUP BY d.department_name;