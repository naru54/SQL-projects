### Sample Dataset File 
  
-- Insert Sample Data into Sales Table
INSERT INTO sales (sale_id, product_id, customer_id, sale_date, quantity, total_amount)
VALUES
    (1, 101, 201, '2023-01-15 08:30:00', 2, 100.00),
    (2, 102, 202, '2023-01-16 10:45:00', 1, 50.00),
    (3, 103, 203, '2023-01-17 12:15:00', 3, 150.00),
    (4, 104, 201, '2023-01-18 14:30:00', 1, 60.00),
    (5, 105, 204, '2023-01-19 16:45:00', 2, 90.00);

-- Insert Sample Data into Products Table
INSERT INTO products (product_id, product_name, category, price)
VALUES
    (101, 'Laptop', 'Electronics', 500.00),
    (102, 'Smartphone', 'Electronics', 250.00),
    (103, 'Headphones', 'Electronics', 50.00),
    (104, 'Coffee Maker', 'Appliances', 60.00),
    (105, 'Blender', 'Appliances', 45.00);

-- Insert Sample Data into Customers Table
INSERT INTO customers (customer_id, customer_name, email, phone)
VALUES
    (201, 'John Doe', 'john.doe@example.com', '555-123-4567'),
    (202, 'Jane Smith', 'jane.smith@example.com', '555-987-6543'),
    (203, 'Robert Johnson', 'robert.j@example.com', '555-567-8901'),
    (204, 'Emily Davis', 'emily.d@example.com', '555-234-5678');

-- Insert Sample Data into Employees Table
INSERT INTO employees (employee_id, employee_name, position, department)
VALUES
    (301, 'Alex Miller', 'Sales Rep', 'Sales'),
    (302, 'Sarah Johnson', 'Manager', 'Sales'),
    (303, 'Michael Smith', 'Engineer', 'Engineering'),
    (304, 'Rachel Davis', 'Analyst', 'Analytics');
