CREATE TABLE salary_changes (
    employee_id INT,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    old_salary DECIMAL(8 , 2 ),
    new_salary DECIMAL(8 , 2 ),
    PRIMARY KEY (employee_id , changed_at)
);

----
CREATE OR REPLACE FUNCTION log_salary_changes () 
RETURNS TRIGGER 
AS 
$$
BEGIN
    IF NEW.salary != OLD.salary THEN
    	INSERT INTO salary_changes(employee_id,old_salary,new_salary)
        VALUES(NEW.employee_id,OLD.salary,NEW.salary);
    END IF;
    RETURN NEW;
END;
$$ 
LANGUAGE plpgsql;

-----
CREATE TRIGGER salary_changes
AFTER UPDATE OF salary ON employees 
FOR EACH ROW
EXECUTE FUNCTION log_salary_changes ();


SELECT
  employee_id,
  first_name,
  last_name,
  salary
FROM
  employees
WHERE
  employee_id = 110;
-----------------------------------

UPDATE employees
SET
  salary = salary * 1.05
WHERE
  employee_id = 110;
-----------------------------
SELECT
  employee_id,
  old_salary,
  new_salary
FROM
  salary_changes;
  
--------------------------------------

DROP TRIGGER [IF EXISTS] trigger_name;
  