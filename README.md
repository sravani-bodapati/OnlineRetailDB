# Online Retail Sales Database – README

##  Introduction

The **Online Retail Sales Database** project is designed to efficiently manage e-commerce operations. It provides a structured way to maintain records of **customers, products, orders, and payments**, ensuring smooth tracking of sales, inventory, and customer transactions. The database follows a normalized schema to reduce redundancy and improve data integrity.


## Abstract

This project demonstrates a **relational database system** for an online retail platform.
It includes:

* Database schema creation
* Sample data insertion
* Queries and views for generating reports

The design supports **scalability**, with the potential to expand into a complete retail management system by adding features such as categories, staff management, and delivery tracking.

##  Tools Used

* **Database**: MySQL
* **Schema Design**: dbdiagram.io (for ER modeling)
* **Execution Environment**: MySQL Workbench

## Project Phases

### **Phase 1 – Database & Schema Creation**

* Created database: `ECOMMERCE`
* Defined core tables: `Customers`, `Products`, `Orders`, `Order_Items`, `Payments`
* Applied **primary and foreign key constraints** for referential integrity

### **Phase 2 – Sample Data Insertion**

* Inserted **5–10 rows** in each table for testing
* Data included diverse customers, product catalog, orders, and payments

### **Phase 3 – Queries & Views**

* **Simple Queries**: list of products, customers, pending orders
* **JOIN Queries**: total spending per customer, best-selling products, sales by date
* **Views**: daily sales report, customer order history

### **Phase 4 – Reports**

* Generated reports using query results (e.g., daily sales, best-selling products)
* Created reusable views for recurring report generation


## Conclusion

The project successfully models an **e-commerce database system** with:

* A normalized schema
* Efficient storage and retrieval of data
* Support for **order tracking, payment management, and sales analysis**
