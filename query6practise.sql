----joins

SELECT * FROM hr_database.employees as E join hr_database.departments as D ON E.department_id=D.department_id;
SELECT count(*) FROM hr_database.employees;
SELECT E.first_name,E.salary,D.department_name FROM hr_database.employees as E join hr_database.departments as D 
ON E.department_id=D.department_id;
SELECT E.first_name,E.salary,D.department_name FROM hr_database.employees as E join hr_database.departments as D 
ON E.department_id=D.department_id where D.department_name='Marketing';
SELECT employee_id,department_name FROM hr_database.employees INNER JOIN hr_database.departments ON departments.department_id = employees.department_id;
SELECT employee_id,department_name FROM hr_database.employees LEFT JOIN hr_database.departments ON departments.department_id = employees.department_id;
SELECT employee_id,department_name FROM hr_database.employees e LEFT JOIN hr_database.departments d ON d.department_id = e.department_id
WHERE department_name IS NULL;
SELECT street_address,city,country_name FROM hr_database.countries c LEFT JOIN hr_database.locations l ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN');
SELECT street_address,city,country_name FROM hr_database.countries c RIGHT JOIN hr_database.locations l ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN');
SELECT e.first_name employee,m.first_name manager FROM hr_database.employees e LEFT JOIN hr_database.employees m ON m.employee_id = e.manager_id
ORDER BY manager;

