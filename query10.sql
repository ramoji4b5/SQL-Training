create table salary_reports
(
id SERIAL PRIMARY KEY,
state VARCHAR(50),
job VARCHAR(50),
salary NUMERIC(10,2)
);
INSERT INTO salary_reports (state,job,salary) VALUES
('Texas','Engineer',5000),
('Texas','Engineer',6000),
('Texas','Manager',7000),
('Florida','Engineer',6000),
('Florida','Engineer',5000),
('Florida','Manager',8000),
('California','Engineer',7500),
('California','Manager',9500),
('California','Manager',10500);
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports GROUP BY
  GROUPING SETS ((state,job),(state),(job),())
ORDER BY  state;
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports GROUP BY
  GROUPING SETS ((state,job))
ORDER BY  state;
SELECT  state,job,SUM(salary) total_salary
FROM  salary_reports
GROUP BY ROLLUP (state, job)
ORDER BY  state DESC;
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY GROUPING SETS ((state,job))
ORDER BY state Desc;
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY ((state,job))
ORDER BY state Desc;
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY ROLLUP((state,job))
UNION ALL
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY GROUPING SETS ((state,job))
SELECT
  COALESCE(state, 'Total') state,
  SUM(salary) AS salary
FROM
  salary_reports
GROUP BY
  CUBE (state)
ORDER BY
  salary;
  sele
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id INT NOT NULL,
    salary DECIMAL(10, 2),
    manager_id INT, -- Self-referencing foreign key for managers
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
