
# Advanced Analytics Platform

Welcome to the Advanced Analytics Platform repository! 
This SQL-based project is designed for complex reporting and analytics, featuring a database that stores data
related to sales, customers, products, and employees.

## Table of Contents

- [Overview](#overview)
- [SQL Tables](#sql-tables)
- [SQL Queries](#sql-queries)
- [Files](#files)
- [Usage](#usage)
- [Contributors](#contributors)

## Overview
The Advanced Analytics Platform is a versatile project that provides powerful SQL queries for in-depth analytics.
The database schema includes tables for sales, products, customers, and employees.

## SQL Tables

1. **Sales:**
   - Fields: `sale_id`, `product_id`, `customer_id`, `sale_date`, `quantity`, `total_amount`

2. **Products:**
   - Fields: `product_id`, `product_name`, `category`, `price`

3. **Customers:**
   - Fields: `customer_id`, `customer_name`, `email`, `phone`

4. **Employees:**
   - Fields: `employee_id`, `employee_name`, `position`, `department`

## SQL Queries

1. **Total Sales by Product Category:**
   ```sql
   -- Query 1
   SELECT category, SUM(total_amount) AS total_sales
   FROM sales
   JOIN products ON sales.product_id = products.product_id
   GROUP BY category;
   ```

2. **Top Performing Products:**
   ```sql
   -- Query 2
   SELECT product_name, SUM(quantity) AS total_quantity_sold
   FROM sales
   JOIN products ON sales.product_id = products.product_id
   GROUP BY product_name
   ORDER BY total_quantity_sold DESC
   LIMIT 10;
   ```

3. **Customer Purchase History:**
   ```sql
   -- Query 3
   SELECT customer_name, COUNT(sale_id) AS total_purchases, SUM(total_amount) AS total_spent
   FROM sales
   JOIN customers ON sales.customer_id = customers.customer_id
   GROUP BY customer_name
   ORDER BY total_spent DESC;
   ```

4. **Monthly Sales Trend:**
   ```sql
   -- Query 4
   SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(total_amount) AS total_sales
   FROM sales
   GROUP BY month
   ORDER BY month;
   ```

5. **Employee Performance:**
   ```sql
   -- Query 5
   SELECT employee_name, COUNT(sale_id) AS total_sales
   FROM sales
   JOIN employees ON sales.employee_id = employees.employee_id
   GROUP BY employee_name
   ORDER BY total_sales DESC;
   ```
# Advanced sql queries:
Check <a href="https://github.com/naru54/SQL-projects/blob/master/Advanced-Analytics-Platform/advanced-sql-queries.sql" >here</a> for advanced sql queries.

## Files

1. **SQL Script File:** [`analytics_platform.sql`](./analytics_platform.sql)
   - This file contains SQL queries, table creation scripts, and sample dataset insertion commands.

2. **Sample Dataset File:** [`sample_dataset.sql`](./sample_dataset.sql)
   - Use this file to insert sample data into your database tables.

3. **Database Schema File (Optional):** [`database_schema.sql`](./database_schema.sql)
   - If applicable, this file defines the database schema.

4. **Readme File:** [`README.md`](./README.md)
   - The main documentation file providing an overview, table of contents, usage instructions, and contributor information.

5. **Contributors:** [Contributor Link](https://github.com/naru54/SQL-projects/edit/master/Advanced-Analytics-Platform/)
   - A link to the repository's contributors

## Usage

1. Execute the SQL queries from `analytics_platform.sql` in your preferred SQL database management tool.
2. Insert sample data using the commands in `sample_dataset.sql`.
3. Customize queries based on specific reporting requirements.
4. Explore additional queries and modifications for advanced analytics.


## Contributors
https://github.com/naru54/SQL-projects/edit/master/Advanced-Analytics-Platform/

**Happy coding!**
