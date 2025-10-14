-- SQL correlated subquery

SELECT first_name,department_id,salary
FROM employees e1
WHERE  salary > ( SELECT AVG(salary) average_salary FROM employees e2
    WHERE e2.department_id = e1.department_id )
ORDER BY  department_id;

-- I need employee salary is grather than average salary of their department

select department_id,ROUND(AVG(salary),2) from employees group by department_id ORDER BY department_id asc;

--- employees & their slarary details from department =1

select first_name,last_name,salary from employees where department_id=5;


