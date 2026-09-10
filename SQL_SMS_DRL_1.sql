-- SELECT * FROM schools WHERE city='Bangalore';

-- SELECT school_name,city,address,phone,email FROM schools WHERE city='Bangalore';


-- SELECT school_name,city,address,phone,email FROM schools WHERE city <> 'Bangalore';

-- SELECT school_name,city,address,phone,email FROM schools WHERE city != 'Bangalore';

--SELECT school_name,city,address,phone,email FROM schools WHERE city IN ('Hyderabad','Bangalore');

---- You have to use the any column one time in where clause:
---SELECT school_name,city,address,phone,email FROM schools WHERE city='Hyderabad' AND city='Bangalore';


--INSERT INTO schools (school_name, city, address, phone, email) VALUES('ABC International School','Bangalore','Mathali,Bagalore',2342341234,'info@abcschool.com');


-- SELECT * FROM students WHERE age BETWEEN 21 AND 22;


--SELECT * FROM students WHERE city BETWEEN 'Hyderabad' AND 'Chennai';
-- 
-- SELECT * FROM schools WHERE city ILIKE '%chennai%';

--  SELECT * FROM schools WHERE city ILIKE '%u';
 
--   SELECT * FROM schools WHERE city ILIKE 'u_';
  
  
  --INSERT INTO schools (school_name,city,phone, email) VALUES('Null International School','vijayawada',2342341234,'info@nullchool.com');

-- SELECT * FROM schools WHERE address IS NULL;
-- 
-- SELECT * FROM schools WHERE address IS NOT NULL;
--(OR)
--SELECT * FROM schools WHERE address !='';


-- SELECT * FROM schools WHERE  NOT(city)='Hyderabad';

--SELECT * FROM schools WHERE city !='Hyderabad';
