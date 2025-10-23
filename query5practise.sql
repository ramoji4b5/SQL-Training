----filtering data using where clauses

select employee_id,first_name ,last_name , hire_date from hr_database.employees where last_name="king";

select employee_id,first_name ,last_name , hire_date from hr_database.employees where 
EXTRACT(year from hire_date)>=1997
AND
EXTRACT(year from hire_date)<=1998;
select employee_id,first_name ,last_name , hire_date from hr_database.employees where 
EXTRACT(year from hire_date)>=1997
OR
EXTRACT(year from hire_date)<=1998;
select employee_id,first_name ,last_name ,salary, hire_date from hr_database.employees where salary<=15000;
select department_id ,department_name FROM hr_database.departments where department_name = "sales";
select department_id ,department_name FROM hr_database.departments where location_id >=1500;
SELECT first_name,last_name,hire_date FROM hr_database.employees
WHERE hire_date BETWEEN '1999-01-01' AND '2000-12-31'ORDER BY hire_date;

select employee_id,first_name ,last_name ,salary, hire_date from hr_database.employees where salary between 17000 and 24000;

---#30/9/25
select employee_id,first_name ,last_name ,salary, hire_date,job_id  from hr_database.employees where job_id IN (7,6,5) ORDER BY job_id;
select department_id ,department_name ,location_id FROM hr_database.departments where location_id IN (2400,2700,2500) ORDER BY location_id Desc;
select department_id ,department_name ,location_id FROM hr_database.departments where location_id IN (2400,2700,2500) ORDER BY location_id Asc;
select department_id ,department_name ,location_id FROM hr_database.departments where location_id NOT IN (2400,2700,2500) ORDER BY location_id Desc;
select employee_id,first_name ,last_name ,salary, hire_date , EXTRACT(MONTH from hire_date) joined_month from hr_database.employees 
where EXTRACT(MONTH FROM hire_date) IN(5,9,11) ORDER BY joined_month;
select employee_id,first_name ,last_name ,salary, hire_date , EXTRACT(MONTH from hire_date) joined_month from hr_database.employees 
where EXTRACT(MONTH FROM hire_date) NOT IN(5,9,11) ORDER BY joined_month;
select first_name,last_name,hire_date FROM hr_database.employees
WHERE hire_date  NOT BETWEEN '1999-01-01' AND '2000-12-31'ORDER BY hire_date;
SELECT first_name,last_name,EXTRACT(YEAR  FROM hire_date) joined_year
FROM hr_database.employees where EXTRACT(YEAR  FROM hire_date) BETWEEN 1999 AND 2000 ORDER BY hire_date;
SELECT first_name,last_name,phone_number FROM hr_database.employees WHERE phone_number = NULL;

select country_id,country_name,region_id from hr_database.countries where region_id IN (3,2,4) ORDER BY region_id;
select employee_id,first_name ,last_name ,salary, hire_date from hr_database.employees where first_name LIKE 'n_ _ _a';
select first_name ,last_name ,salary, hire_date,job_id ,department_id from hr_database.employees where department_id IN (7,6) ORDER BY job_id;
select employee_id,first_name ,last_name ,salary, hire_date,job_id  from hr_database.employees where department_id = 6 OR department_id
