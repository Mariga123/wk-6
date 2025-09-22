-- sample_data.sql

-- Drop tables if they exist
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS productlines;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS offices;

-- Offices & Employees
CREATE TABLE offices (
    officeCode INT PRIMARY KEY,
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    email VARCHAR(100),
    officeCode INT,
    FOREIGN KEY (officeCode) REFERENCES offices(officeCode)
);

INSERT INTO offices VALUES
(1, 'San Diego', 'USA'),
(2, 'Paris', 'France'),
(3, 'Tokyo', 'Japan');

INSERT INTO employees VALUES
(1002, 'John', 'mariga', 'john@classic.com', 1),
(1056, 'Jane', 'Akinyi', 'akinyijane@classic.com', 2),
(1076, 'Alex', 'chris', 'chrisalex@classic.com', 3);

-- Productlines & Products
CREATE TABLE productlines (
    productLine VARCHAR(50) PRIMARY KEY,
    textDescription VARCHAR(100)
);

CREATE TABLE products (
    productCode VARCHAR(20) PRIMARY KEY,
    productName VARCHAR(100),
    productVendor VARCHAR(100),
    productLine VARCHAR(50),
    FOREIGN KEY (productLine) REFERENCES productlines(productLine)
);

INSERT INTO productlines VALUES
('Motorcycles', 'Two-wheelers'),
('Classic Cars', 'Old models'),
('Trucks', 'Heavy vehicles');

INSERT INTO products VALUES
('S10_1678', '1969 Harley', 'Min Lin Diecast', 'Motorcycles'),
('S10_1949', '1952 Alpine', 'Classic Metal', 'Classic Cars'),
('S18_2248', '1999 Indy Car', 'Autoart Studio', 'Motorcycles'),
('X99_9999', 'Ghost Product', 'Phantom Vendor', 'NonExistentLine');

-- Customers & Orders
CREATE TABLE customers (
    customerNumber INT PRIMARY KEY,
    customerName VARCHAR(100)
);

CREATE TABLE orders (
    orderNumber INT PRIMARY KEY,
    orderDate DATE,
    shippedDate DATE,
    status VARCHAR(20),
    customerNumber INT,
    FOREIGN KEY (customerNumber) REFERENCES customers(customerNumber)
);

INSERT INTO customers VALUES
(103, 'Atelier Graph'),
(112, 'Signal Gift'),
(114, 'Australian Collectors');

INSERT INTO orders VALUES
(10100, '2003-01-06', '2003-01-13', 'Shipped', 103),
(10101, '2003-01-09', '2003-01-18', 'Shipped', 112),
(10102, '2003-01-10', '2003-01-14', 'Cancelled', 114),
(10103, '2003-01-15', '2003-01-20', 'On Hold', 999);
