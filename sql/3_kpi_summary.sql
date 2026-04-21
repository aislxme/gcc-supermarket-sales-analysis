-- KPI Summary
SELECT
    ROUND(SUM(Total), 2) AS total_revenue,
    COUNT(*) AS total_transactions,
    ROUND(AVG(Total), 2) AS avg_order_value,
    ROUND(AVG(Rating), 2) AS avg_rating
FROM supermarket_sales;