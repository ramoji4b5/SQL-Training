select employee_id,first_name,salary from employees where salary=5000;

task : to know the employee getting max salary:
1. which table
2. which column
3. which condition 
4. what logic

select MAX(salary) from employees;
select ROUND(AVG(salary),2) from employees;


select employee_id,first_name,salary from employees where salary>=(select AVG(salary) from employees);