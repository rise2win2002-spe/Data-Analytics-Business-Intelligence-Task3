-- TASK 3: Advanced SQL Analysis

-- 1. Monthly Performance Analysis
SELECT strftime('%Y-%m', Order_Date) AS Month,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Month;

-- 2. Month-over-Month Growth
-- Modify according to your SQL dialect

-- 3. CASE Classification
SELECT Category,
SUM(Sales) AS Total_Sales,
CASE
    WHEN SUM(Sales) >= 100000 THEN 'High Performer'
    WHEN SUM(Sales) >= 50000 THEN 'Medium Performer'
    ELSE 'Low Performer'
END AS Performance_Class
FROM orders
GROUP BY Category;

-- 4. Underperforming Regions
SELECT Region, SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Region
HAVING SUM(Profit) < 0;
