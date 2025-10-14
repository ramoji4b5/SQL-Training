--Using SQL ANY operator with <> (Not Equal To)
SELECT first_name,salary FROM employees 
WHERE salary <> ANY ( SELECT salary FROM employees WHERE department_id = 2 )
ORDER BY salary;