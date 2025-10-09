CREATE TABLE salary_reports (
    id SERIAL PRIMARY KEY,
    state VARCHAR(50),
    job VARCHAR(50),
    salary NUMERIC(10,2)
);

INSERT INTO salary_reports (state, job, salary) VALUES
('Texas', 'Engineer', 5000),
('Texas', 'Engineer', 6000),
('Texas', 'Manager', 7000),
('Florida', 'Engineer', 6000),
('Florida', 'Engineer', 5000),
('Florida', 'Manager', 8000),
('California', 'Engineer', 7500),
('California', 'Manager', 9500),
('California', 'Manager', 10500);

SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports GROUP BY
  GROUPING SETS ((state,job),(state),(job),())
ORDER BY  state;
--(job),(state,job),,()
--,job,SUM(salary) 
--(state),(job),


SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports GROUP BY
  GROUPING SETS ((state,job))
ORDER BY  state;

SELECT department_id FROM employees GROUP BY department_id
ORDER BY department_id;

SELECT manager_id FROM employees GROUP BY manager_id

SELECT salary FROM employees GROUP BY Salary;


