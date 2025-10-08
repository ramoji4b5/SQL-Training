SELECT department_id FROM employees GROUP BY department_id ORDER BY department_id;


select first_name from employees group by department_id,first_name;

-- SELECT DISTINCT department_id FROM employees ORDER BY department_id;

SELECT department_id,COUNT(employee_id) headcount FROM employees GROUP BY department_id;


-- GROUP BY with INNER JOIN
SELECT department_name,COUNT(employee_id) headcount,e.department_id FROM employees e
  INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY department_name,e.department_id;


-- GROUP BY with HAVING
SELECT department_name, COUNT(employee_id) headcount FROM
  employees e INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY department_name HAVING COUNT(employee_id) > 5
ORDER BY headcount DESC;

--  GROUP BY with MIN, MAX, and AVG
SELECT department_name,MIN(salary) min_salary,MAX(salary) as max_salary,ROUND(AVG(salary), 2) average_salary
FROM employees e INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY department_name
having MAX(salary) > 5000;

---get the department wise total sarlary department name

select department_name,SUM(salary)
from employees e inner join departments d on e.department_id = d.department_id
group by department_name;





