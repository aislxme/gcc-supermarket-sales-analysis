-- Identifies the busiest shopping hours
SELECT Hour, ROUND(SUM(Total), 2) AS revenue
FROM supermarket_sales
GROUP BY Hour
ORDER BY revenue DESC;

-- Shows which city generated the highest total sales
SELECT City, ROUND(SUM(Total), 2) AS revenue
FROM supermarket_sales
GROUP BY City
ORDER BY revenue DESC;

-- Compares performance of the three branches
SELECT Branch, ROUND(SUM(Total), 2) AS revenue
FROM supermarket_sales
GROUP BY Branch
ORDER BY revenue DESC;

-- Finds the best-selling product lines by revenue
SELECT Product_line, ROUND(SUM(Total), 2) AS revenue
FROM supermarket_sales
GROUP BY Product_line
ORDER BY revenue DESC;

-- Shows which payment method customers used most
SELECT Payment, COUNT(*) AS transactions
FROM supermarket_sales
GROUP BY Payment
ORDER BY transactions DESC;

-- Compares Member vs Normal customers
SELECT customer_type,
       COUNT(*) AS transactions,
       ROUND(AVG(Total), 2) AS avg_order_value,
       ROUND(SUM(Total), 2) AS total_revenue
FROM supermarket_sales
GROUP BY customer_type;

-- Checks whether male or female customers spent more
SELECT gender,
       COUNT(*) AS transactions,
       ROUND(SUM(Total), 2) AS total_revenue,
       ROUND(AVG(Total), 2) AS avg_order_value
FROM supermarket_sales
GROUP BY gender;

-- Finds which city received better customer ratings
SELECT City,
       ROUND(AVG(Rating), 2) AS avg_rating
FROM supermarket_sales
GROUP BY City
ORDER BY avg_rating DESC;

-- Shows how sales changed over time
SELECT DATE_FORMAT(Date, '%Y-%m') AS month,
       ROUND(SUM(Total), 2) AS monthly_revenue
FROM supermarket_sales
GROUP BY month
ORDER BY month;

