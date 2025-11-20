CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE customers (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    cust_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

INSERT INTO customers VALUES
(1, 'Kishore', 'Chennai'),
(2, 'Vijay', 'Bangalore'),
(3, 'Arun', 'Hyderabad');

INSERT INTO orders VALUES
(101, '2025-01-10', 1, 1200),
(102, '2025-01-12', 3, 4500),
(103, '2025-01-15', 2, 3200);

-- Latest orders
SELECT * FROM orders ORDER BY order_date DESC;

-- Total spent by each customer
SELECT c.cust_name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o ON c.cust_id = o.cust_id
GROUP BY c.cust_name;
