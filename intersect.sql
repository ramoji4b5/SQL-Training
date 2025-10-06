CREATE TABLE candidates (
  candidate_id INT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL
);

INSERT INTO
  candidates (candidate_id, first_name, last_name)
VALUES
  (1, 'Neena', 'Kochhar'),
  (2, 'Alexander', 'Hunold'),
  (3, 'Peter', 'Thiel');

SELECT candidate_id as id,first_name,last_name FROM candidates
INTERSECT
SELECT employee_id as id,first_name,last_name FROM employees
ORDER BY first_name, last_name;