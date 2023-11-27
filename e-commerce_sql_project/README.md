
# E-Commerce SQL Project

This project is an e-commerce system implemented using SQL for database management. The project includes tables for products, customers, orders, order items, and payments, providing a foundation for managing an online store.

## Table of Contents

- [Table Structure](#table-structure)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Table Structure

# 1. Products Table:
   - `product_id`: Unique identifier for each product.
   - `name`: Name of the product.
   - `description`: Description of the product.
   - `price`: Price of the product.
   - `stock_quantity`: Available stock quantity of the product.
   - `category`: Category to which the product belongs.

   ```sql
   CREATE TABLE products (
       product_id INT PRIMARY KEY,
       name VARCHAR(255) NOT NULL,
       description TEXT,
       price DECIMAL(10, 2) NOT NULL,
       stock_quantity INT NOT NULL,
       category VARCHAR(50)
   );
   ```

### 2. Customers Table:
   - `customer_id`: Unique identifier for each customer.
   - `first_name`: First name of the customer.
   - `last_name`: Last name of the customer.
   - `email`: Email address of the customer.
   - `password`: Password for customer authentication.

   ```sql
   CREATE TABLE customers (
       customer_id INT PRIMARY KEY,
       first_name VARCHAR(255) NOT NULL,
       last_name VARCHAR(255) NOT NULL,
       email VARCHAR(255) NOT NULL,
       password VARCHAR(255) NOT NULL
   );
   ```

### 3. Orders Table:
   - `order_id`: Unique identifier for each order.
   - `customer_id`: Foreign key referencing the `customer_id` in the Customers Table.
   - `order_date`: Date when the order was placed.
   - `total_price`: Total price of the order.

   ```sql
   CREATE TABLE orders (
       order_id INT PRIMARY KEY,
       customer_id INT,
       order_date DATE,
       total_price DECIMAL(10, 2) NOT NULL,
       FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
   );
   ```

### 4. OrderItems Table:
   - `order_item_id`: Unique identifier for each order item.
   - `order_id`: Foreign key referencing the `order_id` in the Orders Table.
   - `product_id`: Foreign key referencing the `product_id` in the Products Table.
   - `quantity`: Quantity of the product in the order.
   - `item_price`: Price of the product for this order item.

   ```sql
   CREATE TABLE order_items (
       order_item_id INT PRIMARY KEY,
       order_id INT,
       product_id INT,
       quantity INT NOT NULL,
       item_price DECIMAL(10, 2) NOT NULL,
       FOREIGN KEY (order_id) REFERENCES orders(order_id),
       FOREIGN KEY (product_id) REFERENCES products(product_id)
   );
   ```

### 5. Payments Table:
   - `payment_id`: Unique identifier for each payment.
   - `order_id`: Foreign key referencing the `order_id` in the Orders Table.
   - `payment_date`: Date when the payment was made.
   - `payment_amount`: Amount paid for the order.

   ```sql
   CREATE TABLE payments (
       payment_id INT PRIMARY KEY,
       order_id INT,
       payment_date DATE,
       payment_amount DECIMAL(10, 2) NOT NULL,
       FOREIGN KEY (order_id) REFERENCES orders(order_id)
   );
   ```

## Getting Started

To set up the project locally, follow these steps:

1. **Database Setup:**
   - Create a new database in your SQL server.
   - Execute the SQL scripts for creating the necessary tables.

2. **Configuration:**
   - Update the database connection details in your application code.

## Usage

This project provides a foundation for managing an e-commerce system using SQL. You can perform various operations such as adding products, processing orders, and analyzing sales data through SQL queries.

## Contributing

Contributions are welcome! If you have suggestions or improvements, please feel free to submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

