--Add a new column bonus NUMERIC(10,2) to the employees table and update all employees’
--bonus as 10% of their salary.

ALTER TABLE employees ADD COLUMN bonus NUMERIC(10,2);

UPDATE employees
SET bonus = salary * 0.10;

-- Display employees who:
-- Work in the IT department
-- Have salary between 60000 and 75000

SELECT * 
FROM employees as e join departments as d on e.department_id = d.department_id
WHERE d.department_name = 'IT' 
  AND salary BETWEEN 6000 AND 75000;
  
--UNION

SELECT job_id FROM employees
UNION
SELECT job_id FROM jobs order by job_id desc;

--- Sub query
--Find employees whose salary is greater than the average salary of all employees.

SELECT first_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);


--Find the total salary, average salary, and number of employees in each department.

SELECT 
  d.department_name,
  COUNT(*) AS total_employees,
  SUM(e.salary) AS total_salary,
  ROUND(AVG(e.salary),2) AS avg_salary
FROM employees  as e join departments as d on d.department_id=e.department_id
GROUP BY d.department_name;

---Assign a rank to employees based on their salary.

SELECT 
  e.first_name,
  d.department_name,
  e.salary,
  RANK() OVER (ORDER BY e.salary DESC) AS salary_rank
FROM employees  as e join departments as d on d.department_id=e.department_id;

SELECT 
  e.first_name,
  d.department_name,
  e.salary,
  RANK() OVER (partition by d.department_name ORDER BY e.salary DESC) AS salary_rank
FROM employees  as e join departments as d on d.department_id=e.department_id;

--Create a function tax_amount(salary NUMERIC) that returns 10% of salary as tax.

CREATE OR REPLACE FUNCTION tax_amount(salary NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
  RETURN salary * 0.10;
END;
$$ LANGUAGE plpgsql;

-- Test it
SELECT first_name, salary, tax_amount(salary) AS tax FROM employees;



--Create a procedure increase_salary(dept_name TEXT, percentage NUMERIC)
--that increases all salaries in a department by given percentage.

CREATE OR REPLACE PROCEDURE increase_salary(dept_id int, percentage NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE employees
  SET salary = salary + (salary * (percentage / 100))
  WHERE department_id = dept_id;
END;
$$;

-- Call the procedure
CALL increase_salary(6, 5);

---
--Find each employee’s salary and how much they earn above their department average.

SELECT 
  e.first_name,
  d.department_name,
  e.salary,
  ROUND(AVG(e.salary)OVER (PARTITION BY d.department_name),2) AS dept_avg,
  ROUND(e.salary - AVG(e.salary) OVER (PARTITION BY d.department_name),2) AS diff_from_avg
FROM employees  as e join departments as d on d.department_id=e.department_id;











