
select * from employees;


select first_name,salary from employees;

select department_id,sum(salary),avg(salary) from employees group by(department_id) 

select department_id,sum(salary),avg(salary) from employees where department_id=3 group by(department_id)

select first_name,salary,sum(salary) over() as total_salary ,Avg(salary) over() as avg_salary from
employees where department_id=3; 


---Syantax

function_name(column) 
OVER (PARTITION BY column ORDER BY column)


---- ROW_number---
SELECT 
  first_name,
  salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employees 
-- RANK()-----
SELECT 
  first_name,
  salary,
RANK() OVER (ORDER BY salary DESC) AS ranks
FROM employees 

--- desnse_rank()
SELECT 
  first_name,
  salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS de_ranks
FROM employees


select * from (SELECT 
  first_name,
  salary,
DENSE_RANK() OVER (ORDER BY salary DESC) AS de_ranks
FROM employees) as rank_tab where de_ranks=1 

--- ROW NUMBER
SELECT 
  first_name,
  salary,
  department_id,
  ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num
FROM employees --where department_id=10;


---RANK()

SELECT 
  first_name,
  department_id,
  salary,
  RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank_num
FROM employees;

--Dense Rank
SELECT 
  first_name,
  department_id,
  salary,
  DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank_num
FROM employees;

---NITLE

SELECT 
  first_name,
  department_id,
  salary,
  NTILE(2) OVER (ORDER BY salary DESC) AS half
FROM employees;

----LEAD & LAG

SELECT 
  first_name,
  department_id,
  salary,
  LAG(salary) OVER (PARTITION BY department_id ORDER BY salary) AS prev_salary,
  LEAD(salary) OVER (PARTITION BY department_id ORDER BY salary) AS next_salary
FROM employees;


---SUM()/AVG() & Over

SELECT 
  first_name,
  department_id,
  salary,
  SUM(salary) OVER (PARTITION BY department_id) AS total_dept_salary,
  AVG(salary) OVER (PARTITION BY department_id) AS avg_dept_salary
FROM employees;


SELECT 
  first_name,
  department_id,
  salary,
  SUM(salary) OVER () AS total_dept_salary,
  AVG(salary) OVER () AS avg_dept_salary
FROM employees;



