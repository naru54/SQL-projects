#Products Table:


   CREATE TABLE products (
       product_id INT PRIMARY KEY,
       name VARCHAR(255) NOT NULL,
       description TEXT,
       price DECIMAL(10, 2) NOT NULL,
       stock_quantity INT NOT NULL
   );


2. Customers Table:
  
   CREATE TABLE customers (
       customer_id INT PRIMARY KEY,
       first_name VARCHAR(255) NOT NULL,
       last_name VARCHAR(255) NOT NULL,
       email VARCHAR(255) NOT NULL,
       password VARCHAR(255) NOT NULL
   );


3. Orders Table:
  
   CREATE TABLE orders (
       order_id INT PRIMARY KEY,
       customer_id INT,
       order_date DATE,
       total_price DECIMAL(10, 2) NOT NULL,
       FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
   );
   

4. OrderItems Table:
   
   CREATE TABLE order_items (
       order_item_id INT PRIMARY KEY,
       order_id INT,
       product_id INT,
       quantity INT NOT NULL,
       item_price DECIMAL(10, 2) NOT NULL,
       FOREIGN KEY (order_id) REFERENCES orders(order_id),
       FOREIGN KEY (product_id) REFERENCES products(product_id)
   );
   

5. Payments Table:

   CREATE TABLE payments (
       payment_id INT PRIMARY KEY,
       order_id INT,
       payment_date DATE,
       payment_amount DECIMAL(10, 2) NOT NULL,
       FOREIGN KEY (order_id) REFERENCES orders(order_id)
   );

----

1. Inserting Products:

INSERT INTO products (product_id, name, description, price, stock_quantity)
VALUES (1, 'Laptop', 'High-performance laptop with 16GB RAM', 999.99, 50);

INSERT INTO products (product_id, name, description, price, stock_quantity)
VALUES (2, 'Smartphone', 'Latest smartphone model with dual cameras', 499.99, 100);


2. Inserting Customers:

INSERT INTO customers (customer_id, first_name, last_name, email, password)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', 'password123');

INSERT INTO customers (customer_id, first_name, last_name, email, password)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', 'securepass');


3. Inserting Orders:

-- Inserting a new order for John Doe
INSERT INTO orders (order_id, customer_id, order_date, total_price)
VALUES (1, 1, '2023-01-15', 999.99);

-- Inserting another order for Jane Smith
INSERT INTO orders (order_id, customer_id, order_date, total_price)
VALUES (2, 2, '2023-02-01', 1499.98);


4. **Inserting Order Items:**

-- Inserting items for the first order
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, item_price)
VALUES (1, 1, 1, 2, 199.99);

-- Inserting items for the second order
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, item_price)
VALUES (2, 2, 2, 1, 499.99);


5. Inserting Payments:


-- Inserting a payment for the first order
INSERT INTO payments (payment_id, order_id, payment_date, payment_amount)
VALUES (1, 1, '2023-01-16', 999.99);

-- Inserting a payment for the second order
INSERT INTO payments (payment_id, order_id, payment_date, payment_amount)
VALUES (2, 2, '2023-02-02', 1499.98);


# Select Statements:

1. Selecting Products:
-- Select all products
SELECT * FROM products;

-- Select products with stock quantity greater than 0
SELECT * FROM products WHERE stock_quantity > 0;


2. Selecting Customers:
-- Select all customers
SELECT * FROM customers;

-- Select a specific customer by email
SELECT * FROM customers WHERE email = 'john.doe@example.com';


3. Selecting Orders:

-- Select all orders
SELECT * FROM orders;

-- Select orders for a specific customer
SELECT * FROM orders WHERE customer_id = 1;


4. Selecting Order Items:
-- Select all order items
SELECT * FROM order_items;

-- Select order items for a specific order
SELECT * FROM order_items WHERE order_id = 1;


5. Selecting Payments:
-- Select all payments
SELECT * FROM payments;

-- Select payments for a specific order
SELECT * FROM payments WHERE order_id = 1;

 Update Statements:
-- Update the stock quantity for a product
UPDATE products SET stock_quantity = 45 WHERE product_id = 1;


2. Updating Customer Information:
-- Update the email for a customer
UPDATE customers SET email = 'john.doe.new@example.com' WHERE customer_id = 1;


3. Updating Order Total Price:

-- Update the total price for an order
UPDATE orders SET total_price = 1099.99 WHERE order_id = 1;


4. Updating Order Item Quantity:

-- Update the quantity for an order item
UPDATE order_items SET quantity = 3 WHERE order_item_id = 1;


5. Updating Payment Amount:

-- Update the payment amount for a payment
UPDATE payments SET payment_amount = 1099.99 WHERE payment_id = 1;


# Alter Statements:
1. Adding a New Column to Products:

-- Add a new column 'brand' to the products table
ALTER TABLE products ADD COLUMN brand VARCHAR(255);


2. Changing the Data Type of a Column in Customers:

-- Change the data type of the 'password' column to VARCHAR(100)
ALTER TABLE customers ALTER COLUMN password TYPE VARCHAR(100);


3. Dropping a Column from Orders:
-- Drop the 'order_date' column from the orders table
ALTER TABLE orders DROP COLUMN order_date;


4. Adding a Foreign Key Constraint to OrderItems:

-- Add a foreign key constraint to the product_id column in order_items
ALTER TABLE order_items ADD CONSTRAINT fk_product_id
    FOREIGN KEY (product_id) REFERENCES products(product_id);


5. Dropping a Table (for demonstration purposes, use cautiously):

-- Drop the payments table
DROP TABLE payment
