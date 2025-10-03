-- self Join Using Left Join

-- select t1.first_name employee,t1.employee_id,t2.first_name,t2.manager_id manager From employees t1  right Join 
-- employees t2 on t1.employee_id=t2.manager_id where t1.first_name='Steven';


-- SELECT e.first_name employee, m.first_name manager
-- FROM employees e LEFT JOIN employees m 
--   ON m.employee_id = e.manager_id
-- ORDER BY  manager NULLS FIRST;

-- SQL FULL OUTER JOIN

-- SELECT  employee_id, first_name, department_name FROM departments
-- FULL outer join employees ON employees.department_id = departments.department_id;

-- Cross Join

-- CREATE TABLE trainings (
--   id INT PRIMARY KEY,
--   program_name VARCHAR(255) NOT NULL,
--   duration INT NOT NULL
-- );


-- INSERT INTO
--   trainings (id, program_name, duration)
-- VALUES
--   (1, 'Leadership Skills', 1),
--   (2, 'Communication Skills', 2),
--   (3,'Manager Skill',3);

-- SELECT  employee_id, first_name, department_name FROM departments
-- FULL outer join employees ON employees.department_id = departments.department_id;


-- SELECT first_name,program_name FROM employees
--   CROSS JOIN trainings
-- ORDER BY first_name;


-- SELECT
--   first_name, program_name FROM
--   employees,
--   trainings
-- ORDER BY
--   first_name;




