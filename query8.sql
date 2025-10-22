select first_name, last_name from hr_database.employees
Union
select first_name, last_name from hr_database.dependents
select employee_id,first_name,last_name from hr_database.employees
Union
select employee_id,first_name,last_name  from hr_database.dependents
SELECT first_name,last_name FROM hr_database.employees 
UNION
 SELECT first_name,last_name FROM hr_database.dependents
 ORDER BY first_name,last_name;
 SELECT first_name,last_name,'Employee' AS role FROM hr_database.employees
UNION
SELECT first_name,last_name,'Dependent' AS role FROM hr_database.dependents
ORDER BY first_name,last_name;
SELECT first_name,last_name,'Employee' AS role FROM hr_database.employees
UNION ALL
SELECT first_name,last_name,'Dependent' AS role FROM hr_database.dependents
ORDER BY first_name,last_name;
SELECT first_name,last_name,'Employee' AS role FROM hr_database.employees
intersect
SELECT first_name,last_name,'Dependent' AS role FROM  hr_database.dependents
ORDER BY first_name,last_name;
SELECT first_name,last_name FROM hr_database.employees
intersect
SELECT first_name,last_name FROM  hr_database.candidates
ORDER BY first_name,last_name;
SELECT employee_id FROM hr_database.employees
EXCEPT
SELECT employee_id FROM hr_database.dependents
ORDER BY employee_id;
