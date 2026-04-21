-- 1. Create database
CREATE DATABASE supermarket_sales;

USE supermarket_sales;

-- 2. Connect to database, then create table
CREATE TABLE supermarket_sales (
    invoice_id VARCHAR(20),
    Branch VARCHAR(10),
    City VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    Product_line VARCHAR(50),
    `Unit price` DECIMAL(10,2),
    Quantity INTEGER,
    `Tax 5%` DECIMAL(10,4),
    Total DECIMAL(10,4),
    Date DATE,
    Time TIME,
    Payment VARCHAR(20),
    cogs DECIMAL(10,2),
    gross_margin_percentage DECIMAL(12,10),
    `gross income` DECIMAL(10,4),
    Rating INTEGER,
    Hour INTEGER
);


 
 DROP TABLE IF EXISTS supermarket_sales_temp;

CREATE TABLE supermarket_sales_temp (
    invoice_id VARCHAR(20),
    Branch VARCHAR(10),
    City VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    Product_line VARCHAR(50),
    `Unit price` VARCHAR(20),
    Quantity VARCHAR(20),
    `Tax 5%` VARCHAR(20),
    Total VARCHAR(20),
    Date VARCHAR(20),
    Time VARCHAR(20),
    Payment VARCHAR(20),
    cogs VARCHAR(20),
    gross_margin_percentage VARCHAR(20),
    `gross income` VARCHAR(20),
    Rating VARCHAR(20),
    Hour VARCHAR(20)
);

SELECT COUNT(*) FROM supermarket_sales_temp;
SELECT * FROM supermarket_sales_temp;

DROP TABLE IF EXISTS supermarket_sales;

CREATE TABLE supermarket_sales AS
SELECT
    invoice_id,
    Branch,
    City,
    customer_type,
    gender,
    Product_line,
    CAST(`Unit price` AS DECIMAL(10,2)) AS `Unit price`,
    CAST(Quantity AS UNSIGNED) AS Quantity,
    CAST(`Tax 5%` AS DECIMAL(10,4)) AS `Tax 5%`,
    CAST(Total AS DECIMAL(10,4)) AS Total,
    STR_TO_DATE(Date, '%d/%m/%Y') AS Date,
    Time,
    Payment,
    CAST(cogs AS DECIMAL(10,2)) AS cogs,
    CAST(gross_margin_percentage AS DECIMAL(12,10)) AS gross_margin_percentage,
    CAST(`gross income` AS DECIMAL(10,4)) AS `gross income`,
    CAST(Rating AS UNSIGNED) AS Rating,
    CAST(Hour AS UNSIGNED) AS Hour
FROM supermarket_sales_temp;


SELECT COUNT(*) FROM supermarket_sales;
SELECT * FROM supermarket_sales LIMIT 5;
DESCRIBE supermarket_sales;