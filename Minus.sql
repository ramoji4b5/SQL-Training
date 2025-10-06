SELECT employee_id FROM employees
EXCEPT
SELECT employee_id FROM dependents
ORDER BY employee_id;