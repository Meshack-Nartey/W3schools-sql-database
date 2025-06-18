CREATE TABLE categories (
  CategoryID int NOT NULL,
  CategoryName varchar(255) DEFAULT NULL,
  Description varchar(255) DEFAULT NULL

);

CREATE TABLE customers (
  CustomerID int NOT NULL,
  CustomerName varchar(255) DEFAULT NULL,
  ContactName varchar(255) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL,
  PostalCode varchar(255) DEFAULT NULL,
  Country varchar(255) DEFAULT NULL

);

CREATE TABLE employees (
  EmployeeID int NOT NULL,
  LastName varchar(255) DEFAULT NULL,
  FirstName varchar(255) DEFAULT NULL,
  BirthDate date DEFAULT NULL,
  Photo varchar(255) DEFAULT NULL,
  Notes text

);

CREATE TABLE orders (
  OrderID int NOT NULL,
  CustomerID int DEFAULT NULL,
  EmployeeID int DEFAULT NULL,
  OrderDate date DEFAULT NULL,
  ShipperID int DEFAULT NULL

);

CREATE TABLE order_details (
  OrderDetailID int NOT NULL,
  OrderID int DEFAULT NULL,
  ProductID int DEFAULT NULL,
  Quantity int DEFAULT NULL

);

CREATE TABLE products (
  ProductID int NOT NULL,
  ProductName varchar(255) DEFAULT NULL,
  SupplierID int DEFAULT NULL,
  CategoryID int DEFAULT NULL,
  Unit varchar(255) DEFAULT NULL,
  Price decimal NOT NULL

);

CREATE TABLE shippers (
  ShipperID int NOT NULL,
  ShipperName varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL

);

CREATE TABLE suppliers (
  SupplierID int NOT NULL,
  SupplierName varchar(255) DEFAULT NULL,
  ContactName varchar(255) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(255) DEFAULT NULL,
  PostalCode varchar(255) DEFAULT NULL,
  Country varchar(255) DEFAULT NULL,
  Phone varchar(255) DEFAULT NULL

);

-- Additional Constraints --

ALTER TABLE categories
  ADD PRIMARY KEY (CategoryID);

ALTER TABLE customers
  ADD PRIMARY KEY (CustomerID);

ALTER TABLE employees
  ADD PRIMARY KEY (EmployeeID);

ALTER TABLE shippers
  ADD PRIMARY KEY (ShipperID);

ALTER TABLE suppliers
  ADD PRIMARY KEY (SupplierID);

ALTER TABLE products
  ADD PRIMARY KEY (ProductID);

ALTER TABLE orders
  ADD PRIMARY KEY (OrderID);

ALTER TABLE orders
  ADD
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
  FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID);

ALTER TABLE order_details
  ADD
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

ALTER TABLE products
  ADD
  FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
  FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);
