CREATE TABLE projects (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

insert into projects values(1,'xyz',cast('2020-12-1' as DATE),cast('2021-12-1' as DATE));

insert into projects values(3,'xyz',cast('2020-12-2' as DATE),cast('2021-12-3' as DATE)),
						   (4,'xyz',cast('2020-12-2' as DATE),cast('2021-12-3' as DATE));
			
insert into projects (project_id,end_date) values(6,cast('2021-12-3' as DATE)),
						   (7,cast('2021-12-3' as DATE));
						  
CREATE TABLE projects_test (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(255),
  start_date DATE, 
  end_date DATE 
);	


insert into projects_test values(1,'xyz',cast('2020-12-1' as DATE),cast('2021-12-1' as DATE));

insert into projects_test values(3,'xyz',cast('2020-12-2' as DATE),cast('2021-12-3' as DATE)),
						   (4,'xyz',cast('2020-12-2' as DATE),cast('2021-12-3' as DATE));
			
insert into projects_test (project_id,end_date) values(6,cast('2021-12-3' as DATE)),
						   (7,cast('2021-12-3' as DATE));

CREATE TABLE IF NOT EXISTS projects (
  project_id INT,
  project_name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  PRIMARY KEY (project_id)
);


CREATE TABLE project_assignments (
  project_id INT,
  employee_id INT,
  assigned_date DATE NOT NULL,
  PRIMARY KEY (project_id, employee_id)
);

insert into project_assignments values(1,1,cast('2012-12-12'as DATE));

insert into project_assignments values(1,2,cast('2012-12-12'as DATE));
insert into project_assignments values(2,1,cast('2012-12-12'as DATE));
insert into project_assignments values(2,1,cast('2012-12-12'as DATE));


CREATE TABLE project_milestones (
  milestone_id INT,
  project_id INT NOT NULL,
  milestone_name VARCHAR(255) NOT NULL,
  CONSTRAINT project_milestones_pk PRIMARY KEY (milestone_id)
);

-- To remove Primary key constraint
ALTER TABLE project_assignments 
DROP CONSTRAINT project_assignments_pkey ;

-- To add Primary Key contraint
ALTER TABLE project_milestones
ADD PRIMARY KEY (milestone_id);