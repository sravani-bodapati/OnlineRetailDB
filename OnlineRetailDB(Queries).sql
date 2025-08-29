-- Switch the database
USE OnlineRetailDB;

-- Queries
-- List all products
SELECT * FROM Products;

-- Get all customers
SELECT * FROM Customers;

-- Show pending orders
SELECT * FROM Orders WHERE status = 'Pending';

-- Join Queires
-- Total spending per customer
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY c.name;

-- Best-selling products
SELECT pr.name, SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products pr ON oi.product_id = pr.product_id
GROUP BY pr.name
ORDER BY total_sold DESC;

-- Sales by date
SELECT DATE(o.order_date) AS sale_date, SUM(p.amount) AS total_sales
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id
GROUP BY sale_date
ORDER BY sale_date;

-- views for report
-- Daily Sales Report
CREATE VIEW Daily_Sales AS
SELECT DATE(o.order_date) AS sale_date, SUM(p.amount) AS total_sales
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id
GROUP BY sale_date;

SELECT*FROM Daily_Sales;

-- Customer Order History
CREATE VIEW Customer_Order_History AS
SELECT c.name, o.order_id, o.order_date, o.status, p.amount, p.method
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id;

SELECT*FROM Customer_Order_History;
