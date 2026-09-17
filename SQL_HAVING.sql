-- HAVING — Filter groups
-- 
-- This is an important distinction.
-- 
-- WHERE → filters rows
-- HAVING → filters groups


SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY state
HAVING SUM(sales_amount) > 100000;

SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM sales
WHERE sales_amount > 20000
GROUP BY state
HAVING SUM(sales_amount) > 80000;

WHERE → remove individual sales ≤ 20,000

GROUP BY → create state groups

SUM → calculate total

HAVING → keep states whose total > 80,000