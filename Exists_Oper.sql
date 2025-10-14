--SQL Exist Operator
SELECT
  employee_id, first_name,last_name FROM employees
WHERE  EXISTS ( SELECT 1 FROM dependents WHERE 
      dependents.employee_id = employees.employee_id
  );
-- SQL NOT Exists Operator  
SELECT
  employee_id,first_name,last_name FROM employees e
WHERE NOT EXISTS (SELECT 1 FROM dependents d WHERE
      d.employee_id = e.employee_id);
	  
	  