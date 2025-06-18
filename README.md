# W3schools-sql-database

This repository contains the full database schema and data for a sample retail/order management system, inspired by the W3schools database. It includes SQL scripts for creating tables, inserting data, and defining relationships through primary and foreign keys.

---

## 📁 Files Included

### 1. `create_tables.sql`
Contains `CREATE TABLE` statements that define the structure of all database tables.

### 2. `insert_data.sql`
Contains `INSERT INTO` statements with actual data for populating the tables.

### 3. `create_tables_with_keys.sql`
Enhanced version of the schema including intelligently inferred primary and foreign key constraints.

### 4. `create_tables_with_user_keys.sql`
Final schema including both the original table definitions and explicitly defined `ALTER TABLE` commands to add primary and foreign key constraints as provided by the user.

---

## 🧱 Tables Overview

- `categories`
- `customers`
- `employees`
- `shippers`
- `suppliers`
- `products`
- `orders`
- `order_details`

---

## 🗂 Relationships

- `orders.CustomerID → customers.CustomerID`
- `orders.EmployeeID → employees.EmployeeID`
- `orders.ShipperID → shippers.ShipperID`
- `order_details.OrderID → orders.OrderID`
- `order_details.ProductID → products.ProductID`
- `products.CategoryID → categories.CategoryID`
- `products.SupplierID → suppliers.SupplierID`

---

## 💡 How to Use

1. Create a new PostgreSQL or MySQL database.
2. Run `create_tables_with_user_keys.sql` to create all tables and set constraints.
3. Run `insert_data.sql` to populate tables with sample data.
4. Explore or build apps on top of this schema.

---

## 📜 License

This project is provided for educational and testing purposes.
