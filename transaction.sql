
-- BEGIN starts a transaction

-- COMMIT permanently saves changes

-- ROLLBACK undoes everything since the last BEGIN



BEGIN;  -- start transaction

UPDATE employees SET salary = salary - 1000 WHERE employee_id = 41;
UPDATE employees SET salary = salary + 1000 WHERE employee_id = 43;

COMMIT;  -- save changes

ROLLBACK;  -- undo all changes

