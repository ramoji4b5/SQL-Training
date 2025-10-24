--Syantax

create trigger trigger_name
[BEFORE |AFTER] event
on table_name trigger_type
BEGIN
 --trigger logic
END;


--SQL Example: Trigger for Salary Audit
--Step 1: Create Tables
CREATE TABLE employees_1 (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    salary NUMERIC(10,2)
);

CREATE TABLE salary_audit (
    audit_id SERIAL PRIMARY KEY,
    emp_id INT,
    old_salary NUMERIC(10,2),
    new_salary NUMERIC(10,2),
    changed_at TIMESTAMP DEFAULT NOW()
);

--Step 2: Create the Trigger Function
CREATE OR REPLACE FUNCTION log_salary_change()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO salary_audit (emp_id, old_salary, new_salary)
    VALUES (NEW.emp_id, OLD.salary, NEW.salary);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--Step 3: Create the Trigger

CREATE TRIGGER salary_update_trigger
AFTER UPDATE OF salary ON employees
FOR EACH ROW
WHEN (OLD.salary IS DISTINCT FROM NEW.salary)
EXECUTE FUNCTION log_salary_change();
--Step 4: Test It
INSERT INTO employees_1 (name, salary) VALUES ('Ravi', 50000);

UPDATE employees_1 SET salary = 55000 WHERE name = 'Ravi';

--Check Audit Log

SELECT * FROM salary_audit;


