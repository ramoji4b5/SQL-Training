SELECT
  first_name,last_name,email, phone_number,department_name
FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id

  CREATE VIEW employee_contacts AS
SELECT
  first_name,last_name,email, phone_number,department_name
FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id
ORDER BY first_name;

CREATE OR REPLACE VIEW payroll (f_name, l_name, j_title, d_name, salary) AS
SELECT
  first_name,last_name,job_title,department_name,  salary
FROM
  employees e
  INNER JOIN jobs j ON j.job_id = e.job_id
  INNER JOIN departments d ON d.department_id = e.department_id
ORDER BY first_name;

DROP VIEW payroll;



