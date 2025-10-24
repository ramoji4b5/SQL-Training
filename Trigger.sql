--Trigger Syantax

CREATE TRIGGER trigger_name 
[BEFORE|AFTER] event
ON table_name trigger_type
BEGIN
  -- trigger_logic
END;


----

CREATE TABLE salary_changes (
    employee_id INT,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    old_salary DECIMAL(8 , 2 ),
    new_salary DECIMAL(8 , 2 ),
    PRIMARY KEY (employee_id , changed_at)
);


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


----

CREATE TRIGGER salary_update_trigger
AFTER UPDATE OF salary ON employees
FOR EACH ROW
WHEN (OLD.salary IS DISTINCT FROM NEW.salary)
EXECUTE FUNCTION log_salary_changes();



