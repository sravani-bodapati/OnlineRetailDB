-- SWITCH DATABASE
USE OnlineRetailDB;

-- INSERT INTO CUSTOMERS 
INSERT INTO Customers (name, email, phone, address) VALUES
('Amit Sharma', 'amit.sharma@example.com', '9876543210', 'Delhi, India'),
('Priya Verma', 'priya.verma@example.com', '9123456780', 'Mumbai, India'),
('Ravi Kumar', 'ravi.kumar@example.com', '9988776655', 'Hyderabad, India'),
('Sneha Reddy', 'sneha.reddy@example.com', '9876123450', 'Bangalore, India'),
('Anil Mehta', 'anil.mehta@example.com', '9865321470', 'Chennai, India'),
('Sunita Joshi', 'sunita.joshi@example.com', '9854213690', 'Pune, India'),
('Rahul Singh', 'rahul.singh@example.com', '9845632147', 'Kolkata, India'),
('Divya Iyer', 'divya.iyer@example.com', '9832146570', 'Coimbatore, India'),
('Karan Malhotra', 'karan.malhotra@example.com', '9821475360', 'Ahmedabad, India'),
('Neha Gupta', 'neha.gupta@example.com', '9812365470', 'Jaipur, India');

-- INSERT INTO PRODUCTS 
INSERT INTO Products (name, description, price, stock) VALUES
('Laptop', 'Dell Inspiron 15', 55000.00, 10),
('Smartphone', 'Samsung Galaxy S22', 70000.00, 15),
('Headphones', 'Sony WH-1000XM4', 25000.00, 20),
('Keyboard', 'Mechanical RGB Keyboard', 4500.00, 30),
('Mouse', 'Wireless Mouse', 1200.00, 50),
('Smartwatch', 'Apple Watch Series 7', 35000.00, 25),
('Tablet', 'iPad Air 2022', 60000.00, 12),
('Camera', 'Canon EOS 1500D', 40000.00, 8),
('Monitor', 'LG 24-inch Full HD', 15000.00, 18),
('Printer', 'HP LaserJet Pro', 18000.00, 10);

-- INSERT INTO ORDERS 
INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2025-08-01 10:30:00', 'Completed'),
(2, '2025-08-02 14:00:00', 'Pending'),
(3, '2025-08-03 16:20:00', 'Shipped'),
(4, '2025-08-04 09:15:00', 'Completed'),
(5, '2025-08-05 11:45:00', 'Cancelled'),
(6, '2025-08-06 13:50:00', 'Pending'),
(7, '2025-08-07 17:30:00', 'Shipped'),
(8, '2025-08-08 12:10:00', 'Completed'),
(9, '2025-08-09 18:25:00', 'Pending'),
(10,'2025-08-10 15:05:00', 'Completed');

-- INSERT INTO ORDER_ITEMS 
INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 5, 2),
(6, 6, 1),
(7, 7, 1),
(8, 8, 2),
(9, 9, 1),
(10, 10, 1);

-- INSERT INTO PAYMENTS
INSERT INTO Payments (order_id, amount, method, payment_date) VALUES
(1, 55000.00, 'Credit Card', '2025-08-01 11:00:00'),
(2, 140000.00, 'UPI', '2025-08-02 14:30:00'),
(3, 25000.00, 'Net Banking', '2025-08-03 17:00:00'),
(4, 13500.00, 'Debit Card', '2025-08-04 09:45:00'),
(5, 2400.00, 'Cash', '2025-08-05 12:00:00'),
(6, 35000.00, 'Credit Card', '2025-08-06 14:10:00'),
(7, 60000.00, 'UPI', '2025-08-07 18:00:00'),
(8, 80000.00, 'Net Banking', '2025-08-08 12:30:00'),
(9, 15000.00, 'Debit Card', '2025-08-09 19:00:00'),
(10, 18000.00, 'Credit Card', '2025-08-10 15:30:00');

