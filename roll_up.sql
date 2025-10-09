SELECT  state,job,SUM(salary) total_salary
FROM  salary_reports
GROUP BY ROLLUP (state, job)
ORDER BY  state DESC;
  

SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY GROUPING SETS ((state,job))
ORDER BY state Desc;


SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY GROUPING SETS ((state,job))
ORDER BY state Desc;


SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY ((state,job))
ORDER BY state Desc;




SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY ROLLUP((state,job))
UNION ALL
SELECT state,job,SUM(salary) AS total_salary
FROM   salary_reports 
GROUP BY GROUPING SETS ((state,job))






