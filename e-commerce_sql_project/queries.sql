### Basic SQL Queries:

1. Retrieve all products from the "Electronics" category.
   
   SELECT * FROM products WHERE category = 'Electronics';
  

2. Find the total number of customers in the database.
 
   SELECT COUNT(*) FROM customers;
  

3. List the names of customers who have placed orders.

   SELECT DISTINCT customers.first_name, customers.last_name
   FROM customers
   JOIN orders ON customers.customer_id = orders.customer_id;
  

# Joins:

4. Retrieve the details of all orders along with the corresponding customer names.
  
   SELECT orders.*, customers.first_name, customers.last_name
   FROM orders
   JOIN customers ON orders.customer_id = customers.customer_id;
  

# Aggregation:

6. Calculate the total revenue generated from all orders.
   
   SELECT SUM(total_price) AS total_revenue FROM orders;


7. Find the average quantity of products ordered per order.

   SELECT AVG(quantity) AS average_quantity_per_order FROM order_items;


# Filtering and Sorting:

8. Retrieve the five most expensive products.
  
   SELECT * FROM products ORDER BY price DESC LIMIT 5;
  

9. List customers who have placed orders in the year 2023.

   SELECT DISTINCT customers.first_name, customers.last_name
   FROM customers
   JOIN orders ON customers.customer_id = orders.customer_id
   WHERE EXTRACT(YEAR FROM order_date) = 2023;
  

# Updating Data:

10. Increase the stock quantity of all products by 10%.
  
   UPDATE products SET stock_quantity = stock_quantity * 1.1;
 

11. Change the email address of the customer with customer_id 1 to a new email.
   
   UPDATE customers SET email = 'new.email@example.com' WHERE customer_id = 1;
  

# Advanced Queries:

12. Find the customer who spent the most money on orders.
  
   SELECT customers.customer_id, customers.first_name, customers.last_name, SUM(orders.total_price) AS total_spent
   FROM customers
   JOIN orders ON customers.customer_id = orders.customer_id
   GROUP BY customers.customer_id, customers.first_name, customers.last_name
   ORDER BY total_spent DESC
   LIMIT 1;


13. Identify products that have never been ordered.
 
   SELECT * FROM products
   LEFT JOIN order_items ON products.product_id = order_items.product_id
   WHERE order_items.order_item_id IS NULL;
  

# Subqueries:

14. List customers who have not placed any orders.
   
   SELECT first_name, last_name
   FROM customers
   WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);
  

15. Retrieve orders with a total price higher than the average total price of all orders.
  
   SELECT * FROM orders
   WHERE total_price > (SELECT AVG(total_price) FROM orders);
   

# Database Modification:

16. Add a new product to the database.
  
   INSERT INTO products (product_id, name, description, price, stock_quantity, category)
   VALUES (3, 'Headphones', 'Noise-canceling headphones', 149.99, 30, 'Electronics');
  

17. Remove a product with low stock quantity from the database.

   DELETE FROM products WHERE stock_quantity < 10;
  

# Constraints:

18. Enforce a constraint to ensure that the total price of an order cannot be negative.
 
   ALTER TABLE orders ADD CONSTRAINT check_total_price_positive CHECK (total_price >= 0);
  

19. Add a constraint to the "email" column in the "customers" table to ensure uniqueness.
 
   ALTER TABLE customers ADD CONSTRAINT unique_email UNIQUE (email);
