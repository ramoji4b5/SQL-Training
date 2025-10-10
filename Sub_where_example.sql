SELECT job_id,job_title FROM jobs WHERE job_title LIKE '%Sales%'

SELECT first_name,last_name FROM employees
WHERE job_id IN ( 
	SELECT job_id FROM jobs WHERE job_title LIKE '%Sales%');
	
1. what table you need ? employees e,jobs j
2. what columns  e.fist_name,e.last_name, j.job_title
3. what is condtions e.job_id j.job_id
4  Opertore On,Where Join


select e.first_name,e.last_name,j.job_title 
From employees e INNER JOIN jobs j
on  e.job_id=j.job_id WHERE j.job_id IN ( 
	SELECT job_id FROM jobs WHERE job_title LIKE '%Sales%');
	
select e.first_name,e.last_name,j.job_title 
From employees e INNER JOIN jobs j
on  e.job_id=j.job_id WHERE j.job_id IN ( 
	SELECT job_id FROM jobs WHERE job_title LIKE '%Account%');

