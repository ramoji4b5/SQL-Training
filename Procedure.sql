CREATE [OR REPLACE] PROCEDURE procedure_name(parameter_list)
LANGUAGE plpgsql
AS $$
DECLARE
    -- Variable declarations (optional)
BEGIN
    -- Procedure body (SQL statements)
END;
$$;

################################################
CREATE OR REPLACE PROCEDURE add_employee(
    emp_id INT,
    f_name VARCHAR,
    l_name VARCHAR,
    e_mail VARCHAR,
    p_number BIGINT,
    h_date DATE,
    j_id INT,
    salary INT,
    m_id INT,
    d_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (
        employee_id,
        first_name,
        last_name,
        email,
        phone_number,
        hire_date,
        job_id,
        salary,
        manager_id,
        department_id
    )
    VALUES (
        emp_id,
        f_name,
        l_name,
        e_mail,
        p_number,
        h_date,
        j_id,
        salary,
        m_id,
        d_id
    );
END;
$$;


CALL add_employee(
  45,
  'Deepika',
  'xaya',
  'vsadfads@gmail.com',
  342534523452,
  CAST('2024-01-05' AS DATE),
  11,   -- j_id (job id)
  15000, -- salary
  101,   -- manager id
  5      -- department id
);


#############################
DROP procedure if exists add_employee;


###############
create procedure group_sql(f_name)
LANGUAGE plpgsql
AS $$
DECLARE
	(f_name varchar)
BEGIN
	select * from employees where first_name=f_name;
	select * from jobs;
END;
$$


######################


CREATE OR REPLACE PROCEDURE get_employee(f_name VARCHAR)
LANGUAGE plpgsql
AS $$
DECLARE
    rec RECORD;
BEGIN
    RAISE NOTICE 'Employee details for first_name = %', f_name;

    FOR rec IN
        SELECT * FROM employees WHERE first_name = f_name
    LOOP
        RAISE NOTICE 'ID: %, Name: % %, Salary: %', rec.employee_id, rec.first_name, rec.last_name, rec.salary;
    END LOOP;

    RAISE NOTICE 'Job table records:';
    FOR rec IN
        SELECT * FROM jobs
    LOOP
        RAISE NOTICE 'Job ID: %, Title: %', rec.job_id, rec.job_title;
    END LOOP;
END;
$$;
##################################################################


call get_employee('Ram');









