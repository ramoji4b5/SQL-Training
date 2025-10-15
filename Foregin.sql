--Foreign Key

CONSTRAINT constraint_name
FOREIGN KEY (column1, column2)
REFERENCES parent_table(column1, column2)
ON DELETE delete_action
ON UPDATE update_action;

CREATE TABLE project_milestones (
  milestone_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  milestone VARCHAR(255),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  project_id INT NOT NULL,
  FOREIGN KEY (project_id) REFERENCES projects (project_id)
);


INSERT INTO
  project_milestones (milestone, start_date, end_date, project_id)
VALUES
  ('Initiation', '2025-01-01', '2025-01-31', 1);
  
---Dropping Foreign Key Constraints
ALTER TABLE foreign_key_table
DROP CONSTRAINT fk_name;


ALTER TABLE project_tasks
DROP CONSTRAINT project_tasks_milestone_id_fkey;


  
  
  