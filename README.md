# SQL Joins Assignment

## 📘 Overview
This assignment helps you practice SQL JOINs using a sample database.  
You will learn to use **INNER JOIN, LEFT JOIN, and RIGHT JOIN** with real-world style tables.

## 📂 Files in this Package
- `answers.sql` → Contains SQL queries for the assignment questions.
- `sample_data.sql` → Creates tables and inserts sample data (with NULL cases to demonstrate join behavior).

## 🛠️ Setup Instructions
1. Open **MySQL Workbench** (or your SQL environment).
2. Run the contents of `sample_data.sql` to create and populate the tables.
3. Run queries from `answers.sql` to test the assignment.

## 🧑‍💼 Assignment Questions
### Question 1 – INNER JOIN
Get firstName, lastName, email, and officeCode of all employees with their offices.

### Question 2 – LEFT JOIN
Get productName, productVendor, and productLine from products (including products with no matching productLine).

### Question 3 – RIGHT JOIN
Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders (including orders without a matching customer).

## 🔎 Expected Results
- **INNER JOIN** → Only matching employees and offices.
- **LEFT JOIN** → Includes products even if productLine is missing (will show NULL).
- **RIGHT JOIN** → Includes orders even if the customer does not exist (will show NULL).

## ✅ Example Usage
```sql
-- Load sample data
SOURCE sample_data.sql;

-- Run solutions
SOURCE answers.sql;
```
