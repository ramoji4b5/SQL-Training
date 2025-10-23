
---joins using right ,left,cross

select t1.first_name employee,t1.employee_id,t2.first_name,t2.manager_id manager From hr_database.employees t1  right Join 
hr_database.employees t2 on t1.employee_id=t2.manager_id where t1.first_name='Steven';
select t1.first_name employee,t1.employee_id,t2.first_name,t2.manager_id manager From hr_database.employees t1  right Join 
hr_database.employees t2 on t1.employee_id=t2.manager_id 

SELECT e.first_name employee, m.first_name manager
FROM hr_database.employees e LEFT JOIN hr_database.employees m  ON m.employee_id = e.manager_id
ORDER BY  manager
SELECT first_name,program_name FROM hr_database.employees
CROSS JOIN trainings
ORDER BY first_name;
SELECT first_name, program_name FROM hr_database.employees, trainings ORDER BY first_name;
SELECT  employee_id, first_name, department_name FROM hr_database.departments 
 FULL join hr_database.employees ON employees.department_id =departments.department_id
 SELECT e.employee_id, e.first_name, d.department_name FROM hr_database.departments d
FULL JOIN hr_database.employees e ON e.department_id = d.department_id;
