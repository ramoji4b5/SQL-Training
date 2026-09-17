-- CREATE TABLE sales (
--     sale_id INT,
--     state VARCHAR(50),
--     city VARCHAR(50),
--     product VARCHAR(50),
--     sales_amount NUMERIC(10,2)
-- );
-- 
-- INSERT INTO sales VALUES
-- (1, 'Telangana', 'Hyderabad', 'Laptop', 50000),
-- (2, 'Telangana', 'Hyderabad', 'Mobile', 20000),
-- (3, 'Telangana', 'Warangal', 'Laptop', 45000),
-- (4, 'Karnataka', 'Bangalore', 'Laptop', 60000),
-- (5, 'Karnataka', 'Bangalore', 'Mobile', 25000),
-- (6, 'Karnataka', 'Mysore', 'Mobile', 15000),
-- (7, 'Andhara',	'Amravathi', 'Laptops', 45000),
-- (8, 'Andhara',	'Vijayawada', 'Mobiles', 60000),
-- (9, 'Andhara',	'Kadapa', 'Smart Watches', 30000);

-- SELECT * FROM sales WHERE sales_amount>=60000;
-- 
-- 
-- SELECT MAX(sales_amount) FROM sales;
-- Where is my Highest sales happen;
--Aggegate functions : Avg,count,sum,min,MAX

--SELECT MAX(sales_amount) AS Highest_sales,state FROM sales GROUP BY STATE; 
-- WHERE MAX(sales_amount)>=600000; 

-- Filter using Having cluase

-- SELECT MAX(sales_amount) AS Highest_sales,state FROM sales GROUP BY STATE
--  HAVING MAX(sales_amount)>=60000

--- i need total sum of the sales product wise

--SELECT product,SUM(sales_amount) FROM sales GROUP BY product;

--SELECT state,SUM(sales_amount) FROM sales GROUP BY state;

SELECT city,SUM(sales_amount) FROM sales GROUP BY city ORDER BY SUM(sales_amount);
 
 
 --



