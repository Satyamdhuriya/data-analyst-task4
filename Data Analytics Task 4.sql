-- CREATE DATABASE ecommerce;
-- USE ecommerce;

-- CREATE TABLE customers (
--     customer_id INT PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100),
--     country VARCHAR(50)
-- );

-- CREATE TABLE orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE,
--     revenue DECIMAL(10,2),
--     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
-- );

-- LOAD DATA INFILE 'C:\Users\Satyam\Desktop\orders.xlsx'
-- INTO TABLE orders
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- SELECT * FROM orders LIMIT 10;

-- SHOW DATABASES;
-- USE ecommerce;
-- SHOW TABLES;


-- SELECT SUM(Quantity * UnitPrice) AS Total_Sales FROM orders;

-- SELECT Description, SUM(Quantity) AS Total_Qty
-- FROM orders
-- GROUP BY Description
-- ORDER BY Total_Qty DESC
-- LIMIT 10;

-- SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS Month, 
--        SUM(Quantity * UnitPrice) AS Sales
-- FROM orders
-- GROUP BY Month
-- ORDER BY Month;

-- SELECT Country, COUNT(DISTINCT CustomerID) AS Total_Customers
-- FROM orders
-- GROUP BY Country
-- ORDER BY Total_Customers DESC;


-- SELECT * FROM orders;


-- SELECT * FROM orders WHERE Country = 'United Kingdom';


-- SELECT * FROM orders ORDER BY UnitPrice DESC;

-- -- Country-wise total sales
-- SELECT Country, SUM(Quantity * UnitPrice) AS TotalSales
-- FROM orders
-- GROUP BY Country
-- ORDER BY TotalSales DESC;

-- Highest spending customer

-- SELECT CustomerID, SUM(Quantity*UnitPrice) AS TotalSpent
-- FROM orders
-- GROUP BY CustomerID
-- HAVING TotalSpent = (
--     SELECT MAX(Sales) 
--     FROM (
--         SELECT SUM(Quantity*UnitPrice) AS Sales
--         FROM orders
--         GROUP BY CustomerID
--     ) AS t
-- );


-- SELECT AVG(UnitPrice) AS AvgPrice FROM orders;


-- SELECT SUM(Quantity*UnitPrice) AS Revenue FROM orders;


-- SELECT MAX(Quantity) AS MaxQty FROM orders;


-- CREATE VIEW country_sales AS
-- SELECT Country, SUM(Quantity*UnitPrice) AS TotalSales
-- FROM orders
-- GROUP BY Country;

-- CREATE INDEX idx_country ON orders(Country(50));

-- ALTER TABLE orders MODIFY Country VARCHAR(50);

-- CREATE INDEX idx_country ON orders(Country);
