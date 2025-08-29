-- E-COMMERCE PLATFORM
-- CREATE E-COMMERCE DATABASE
CREATE DATABASE IF NOT EXISTS OnlineRetailDB;

-- SWITCH DATABASE
USE OnlineRetailDB;

-- CREATE CUSTOMERS TABLE
CREATE TABLE Customers(
CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
phone VARCHAR(20),
address TEXT);

-- CREATEE PRODUCTS TABLE
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0
);

-- CREATE ORDERS TABLE
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'Pending',
    Foreign key (customer_id) REFERENCES Customers(customer_id)
);

-- CREATE ORDER_ITEMS TABLE
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    subtotal DECIMAL(10,2) GENERATED ALWAYS AS (quantity * 1.0) STORED,
    Foreign key (order_id)REFERENCES Orders(order_id),
    Foreign key (product_id) REFERENCES Products(product_id)
);

-- CREATE PAYMENTS TABLE
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT ,
    amount DECIMAL(10,2) NOT NULL,
    method VARCHAR(50),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    foreign key(order_id) REFERENCES Orders(order_id)
);

