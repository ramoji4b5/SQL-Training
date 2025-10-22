-- Union
select first_name, last_name from employees
Union
select first_name, last_name from dependents;

select employee_id,first_name,last_name from employees
Union
select employee_id,first_name,last_name from dependents;


select * from employees as e join dependents as d on 
 e.employee_id= d.employee_id;

 select *from regions as r join countries as c on
 r.region_id=c.region_id;
 
 
 select first_name fn, last_name lna from dependents;


 SELECT first_name,last_name FROM employees
 UNION
 SELECT first_name,last_name FROM dependents
 ORDER BY first_name,last_name;

--Combining data with additional column

SELECT first_name,last_name,'Employee' AS role FROM employees
UNION
SELECT first_name,last_name,'Dependent' AS role FROM dependents
ORDER BY first_name,last_name;

SELECT first_name,last_name,'Employee' AS role FROM employees
UNION
SELECT first_name,last_name,'candidate' AS role FROM candidates
ORDER BY first_name,last_name;


--Union All

SELECT first_name,last_name,'Employee' AS role FROM employees
UNION ALL
SELECT first_name,last_name,'Dependent' AS role FROM dependents
ORDER BY first_name,last_name;

SELECT first_name,last_name,'Employee' AS role FROM employees
UNION ALL
SELECT first_name,last_name,'candidate' AS role FROM candidates
ORDER BY first_name,last_name;

--insert checking
SELECT first_name,last_name,'Employee' AS role FROM employees
intersect
SELECT first_name,last_name,'Dependent' AS role FROM dependents
ORDER BY first_name,last_name;

SELECT first_name,last_name,'Employee' AS role FROM employees
intersect
SELECT first_name,last_name,'candidate' AS role FROM candidates
ORDER BY first_name,last_name;
