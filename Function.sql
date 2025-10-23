create or replace Function function_name(parameter datatype)
Returns retun_type as 
$$
BEGIN
	--SQL logic
	return result;
END;
$$
LANGUAGE pgSQL;
########################
create or replace function add_num(x int,y int)
returns int as $$
BEGIN
	return x + y;
END;
$$
language plpgsql;

select add_num(20,30);

call procedure_name;

select function_name;



CREATE OR REPLACE FUNCTION apply_salary_hike()
RETURNS VOID AS $$
BEGIN
    UPDATE employees
    SET salary = salary + (salary * 0.10);
    
    RAISE NOTICE 'Salary hike of 10%% applied to all employees!';
END;
$$ LANGUAGE plpgsql;

##############################################

CREATE OR REPLACE FUNCTION apply_salary_hike_1(percent_increase NUMERIC)
RETURNS VOID AS $$
BEGIN
    UPDATE employees
    SET salary = salary + (salary * percent_increase / 100);
    
    RAISE NOTICE 'Salary increased by %%% for all employees', percent_increase;
END;
$$ LANGUAGE plpgsql;



#######################################################


SELECT apply_salary_hike_1(10);  


############################################

CREATE OR REPLACE FUNCTION group_sql(f_name VARCHAR)
RETURNS TABLE (
    employee_id INT,
    first_name VARCHAR,
    last_name VARCHAR,
    job_id INT,
    salary NUMERIC
) AS $$
BEGIN
    RETURN QUERY
    SELECT employee_id, first_name, last_name, job_id, salary
    FROM employees
    WHERE first_name = f_name;
END;
$$ LANGUAGE plpgsql;

select group_sql('Anu')


create or replace function min_salary(min_salary Numeric)
RETURNS TABLE(
emp_id Int,
f_name varchar,
mon_salary Numeric)
AS $$
BEGIN
	RETURN QUERY
	select employee_id,first_name,salary from employees where salary <= min_salary;
	END;
$$ LANGUAGE plpgsql;

select * from min_salary(10000);

select add_num(30,20)

select min_salary(12000);

-- to get the total salary for each department 
select first_name,last_name,job_id,department_id,sum(salary) from employees 
group by(department_id,first_name,last_name,job_id)



select ____________ department_id,sum(salary) from employees group by(department_id)

#############################################################
create or replace function sum_dep_salary(dep_id int)
returns numeric as $$
DECLARE total numeric;
BEGIN
	select sum(salary)into total from employees where department_id=dep_id;
	return total;
END;
$$ language plpgsql;

select sum_dep_salary(11);

sum_dep_salary_by_name('IT')
	


