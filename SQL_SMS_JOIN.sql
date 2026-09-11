--SELECT * FROM employees WHERE first_name='John';


-- SELECT * FROM employees JOIN departments on employees.department_id=departments.department_id 
--  WHERE first_name='John';
 
 
-- SELECT COUNT(*) FROM employees;
--  
-- SELECT COUNT(*) FROM departments; 
 -- SELECT e.first_name AS FNAME,e.last_name AS LNAME,e.salary,d.department_name 
--  FROM employees AS e 
--  INNER JOIN 
--  departments AS d 
--  ON e.department_id=d.department_id 
--  WHERE e.first_name='John';


-- SELECT COUNT(*) FROM employees WHERE department_id IS NULL;

--SELECT count(*) FROM employees JOIN departments on employees.department_id=departments.department_id 
 --WHERE first_name='John';
 
--  SELECT e.first_name,e.last_name,e.salary,d.department_name 
--  FROM employees AS e 
--  JOIN departments AS d 
--  on e.department_id=d.department_id
 
 -- Left JOIN
--  SELECT e.first_name,e.last_name,e.salary,d.department_name 
--  FROM employees AS e 
--  LEFT JOIN departments AS d 
--  on e.department_id=d.department_id
--  
 
 
 -- RIGHT JOIN
 
--  SELECT e.first_name,e.last_name,e.salary,d.department_name 
--  FROM employees AS e 
--  RIGHT JOIN departments AS d 
--  on e.department_id=d.department_id
 
 --self join
 select t1.first_name as employee,t1.employee_id,t2.first_name AS manager,t2.manager_id  
 From employees t1  
 LEFT Join employees t2 
 on t1.employee_id=t2.manager_id; --where t1.first_name='Steven';
 
 
 
 
 
 
 
 
 