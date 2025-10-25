--Normal Query

select * from employees;

select first_name,salary from  employees;

--- Optimized query 

select employee_id,first_name,salary from employees

Explain select employee_id,first_name,salary from employees

--- Indexing

create index index_name on table_name (coolumn_name);

create index idx_employee_id on employees(employee_id);

select * from employees where employee_id=101;

Explain select employee_id,first_name,salary from employees where employee_id=101;

---Indexing Techniques

-- Create a B-tree index on department
CREATE INDEX idx_dept ON employees(department_id);

-- Composite index
CREATE INDEX idx_dept_job ON employees(department_id, job_id);

-- Full-text search (PostgreSQL example)
CREATE INDEX idx_docs ON department_id USING gin(to_tsvector('IT', content));



Explain select first_name, salary from employees where job_id=2 and department_id=3;



---Explain
Explain select * from employees;


