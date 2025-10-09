SELECT
  COALESCE(state, 'Total') state,
  SUM(salary) AS salary
FROM
  salary_reports
GROUP BY
  CUBE (state)
ORDER BY
  salary;
  
  
  
SELECT department_name,COUNT(employee_id) headcount,e.department_id FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY 
department_name,e.department_id;

---GROUPING SET
SELECT department_name,COUNT(employee_id) headcount,manager_id,job_id FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY 
GROUPING SETS ((department_name),(manager_id),(job_id),(manager_id,job_id))
;


---ROLL UP

SELECT department_name,COUNT(employee_id) headcount,e.department_id FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY 
department_name,e.department_id;

---GROUPING SET
SELECT department_name,COUNT(employee_id) headcount,manager_id,job_id FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id GROUP BY
ROLLUP ((department_name),(manager_id),(job_id),(manager_id,job_id))

--- CUBE
SELECT department_name,COUNT(employee_id) headcount,manager_id,job_id FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id GROUP BY
CUBE ((department_name),(manager_id),(job_id),(manager_id,job_id))




