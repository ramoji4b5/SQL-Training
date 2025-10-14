--SQL ALL operator with the greater than operator

SELECT first_name,last_name,department_id,salary FROM
  employees WHERE salary <> ALL (SELECT salary FROM employees WHERE department_id = 3
  ) ORDER BY salary;
  

SELECT first_name,last_name,department_id,salary FROM
  employees WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 3
  ) ORDER BY salary;
  
SELECT first_name,last_name,department_id,salary FROM
  employees WHERE  EXISTS (SELECT salary FROM employees WHERE department_id = 3
  ) ORDER BY salary;
  
  

SELECT salary FROM employees WHERE department_id = 3



--employees who has at least one dependents


select employee_id,first_name from employees where 
NOT EXISTS ( select 1 from dependents where dependents.employee_id=employees.employee_id);