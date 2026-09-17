SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY STATE;

SELECT SUM(sales_amount) AS total_sales
FROM sales;

SELECT AVG(sales_amount) AS average_sales
FROM sales;

SELECT
    state,
    AVG(sales_amount) AS average_sales
FROM sales
GROUP BY STATE;

SELECT COUNT(*) AS total_transactions
FROM sales;

SELECT
    state,
    COUNT(*) AS transaction_count
FROM sales
GROUP BY STATE;


SELECT MAX(sales_amount) AS highest_sale
FROM sales;

SELECT
    state,
    MAX(sales_amount) AS highest_sale
FROM sales
GROUP BY STATE;


SELECT MIN(sales_amount) AS lowest_sale
FROM sales;

SELECT
    state,
    MIN(sales_amount) AS lowest_sale
FROM sales
GROUP BY STATE;


SELECT SUM(sales_amount) AS total_sales
FROM sales;

SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY STATE;



