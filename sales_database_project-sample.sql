-- Sales Database Project
create database salesprojectsample;
use salesprojectsample;


-- Table Creation
CREATE TABLE Regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    region_name VARCHAR(50)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(8,2)
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert Regions
INSERT INTO Regions (region_name) VALUES ('North');
INSERT INTO Regions (region_name) VALUES ('South');
INSERT INTO Regions (region_name) VALUES ('East');
INSERT INTO Regions (region_name) VALUES ('West');

-- Insert Customers
INSERT INTO Customers (name, region_id) VALUES ('Customer_1', 2);
INSERT INTO Customers (name, region_id) VALUES ('Customer_2', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_3', 4);
INSERT INTO Customers (name, region_id) VALUES ('Customer_4', 3);
INSERT INTO Customers (name, region_id) VALUES ('Customer_5', 3);
INSERT INTO Customers (name, region_id) VALUES ('Customer_6', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_7', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_8', 4);
INSERT INTO Customers (name, region_id) VALUES ('Customer_9', 4);
INSERT INTO Customers (name, region_id) VALUES ('Customer_10', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_11', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_12', 4);
INSERT INTO Customers (name, region_id) VALUES ('Customer_13', 2);
INSERT INTO Customers (name, region_id) VALUES ('Customer_14', 3);
INSERT INTO Customers (name, region_id) VALUES ('Customer_15', 2);
INSERT INTO Customers (name, region_id) VALUES ('Customer_16', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_17', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_18', 1);
INSERT INTO Customers (name, region_id) VALUES ('Customer_19', 2);
INSERT INTO Customers (name, region_id) VALUES ('Customer_20', 4);

-- Insert Products
INSERT INTO Products (product_name, category, price) VALUES ('Laptop', 'Electronics', 899.99);
INSERT INTO Products (product_name, category, price) VALUES ('Smartphone', 'Electronics', 599.99);
INSERT INTO Products (product_name, category, price) VALUES ('Desk Chair', 'Furniture', 149.99);
INSERT INTO Products (product_name, category, price) VALUES ('Notebook', 'Stationery', 4.99);
INSERT INTO Products (product_name, category, price) VALUES ('Pen', 'Stationery', 1.99);
INSERT INTO Products (product_name, category, price) VALUES ('Monitor', 'Electronics', 199.99);
INSERT INTO Products (product_name, category, price) VALUES ('Backpack', 'Accessories', 49.99);
INSERT INTO Products (product_name, category, price) VALUES ('Water Bottle', 'Accessories', 9.99);
INSERT INTO Products (product_name, category, price) VALUES ('Desk', 'Furniture', 299.99);
INSERT INTO Products (product_name, category, price) VALUES ('Headphones', 'Electronics', 89.99);

-- Insert Sales
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 3, '2024-01-01', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 7, '2024-03-05', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (6, 3, '2024-03-30', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 5, '2024-03-07', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 2, '2024-01-30', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (3, 3, '2024-03-30', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (9, 2, '2024-02-07', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (6, 4, '2024-01-24', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 7, '2024-02-10', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 9, '2024-01-30', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 2, '2024-03-11', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (5, 10, '2024-01-16', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (2, 1, '2024-02-15', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (1, 9, '2024-01-23', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (4, 5, '2024-01-03', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (4, 8, '2024-02-11', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (1, 5, '2024-04-18', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (4, 1, '2024-01-12', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (11, 1, '2024-01-05', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (20, 1, '2024-02-21', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 8, '2024-02-15', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (6, 5, '2024-02-20', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (17, 9, '2024-04-20', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (6, 9, '2024-04-29', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 6, '2024-02-07', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 9, '2024-02-22', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (13, 9, '2024-01-14', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (20, 8, '2024-03-11', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (1, 8, '2024-04-11', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (3, 9, '2024-02-14', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 5, '2024-04-30', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (8, 1, '2024-04-14', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (19, 4, '2024-04-01', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (15, 6, '2024-02-29', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (17, 8, '2024-04-16', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (19, 9, '2024-01-28', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (20, 5, '2024-04-22', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (5, 2, '2024-01-12', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (4, 3, '2024-01-06', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (13, 1, '2024-04-23', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (1, 4, '2024-03-01', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 1, '2024-01-18', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (13, 7, '2024-01-11', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (20, 1, '2024-01-04', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 1, '2024-03-26', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (10, 6, '2024-03-18', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 7, '2024-01-14', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 1, '2024-03-16', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (6, 8, '2024-03-18', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (3, 4, '2024-02-02', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (8, 5, '2024-04-13', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 9, '2024-04-29', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (1, 10, '2024-01-18', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (1, 8, '2024-02-22', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (10, 3, '2024-03-18', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (4, 2, '2024-02-08', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 6, '2024-03-29', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (9, 4, '2024-01-23', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (8, 5, '2024-03-03', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (15, 8, '2024-01-27', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (19, 9, '2024-03-26', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 1, '2024-03-01', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 3, '2024-04-18', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 4, '2024-03-15', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 8, '2024-03-31', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (2, 10, '2024-04-17', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (5, 6, '2024-04-10', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (17, 7, '2024-04-26', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 10, '2024-03-23', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (11, 2, '2024-02-13', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (11, 6, '2024-01-02', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 7, '2024-01-01', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 4, '2024-01-24', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (16, 9, '2024-03-08', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (11, 8, '2024-04-02', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (8, 10, '2024-01-13', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (20, 3, '2024-01-18', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (13, 3, '2024-01-10', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 3, '2024-01-17', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (2, 9, '2024-04-17', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 10, '2024-04-12', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 7, '2024-01-21', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (10, 2, '2024-04-05', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (11, 7, '2024-01-24', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (19, 5, '2024-01-16', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (3, 6, '2024-02-07', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (5, 9, '2024-04-10', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (8, 5, '2024-04-03', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (17, 4, '2024-02-15', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (5, 7, '2024-01-14', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 5, '2024-04-04', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 4, '2024-02-09', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 9, '2024-04-26', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (17, 2, '2024-01-11', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (10, 8, '2024-01-29', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 5, '2024-02-05', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (4, 1, '2024-03-26', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (11, 8, '2024-02-11', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 1, '2024-03-22', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 4, '2024-04-12', 3);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 5, '2024-04-14', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (12, 3, '2024-02-18', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 4, '2024-04-27', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (9, 4, '2024-04-18', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (9, 6, '2024-03-16', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (9, 9, '2024-04-07', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (19, 8, '2024-04-21', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (9, 9, '2024-02-23', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (3, 5, '2024-01-18', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (7, 5, '2024-03-27', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (13, 6, '2024-04-07', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (2, 7, '2024-04-17', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (18, 7, '2024-04-02', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (13, 10, '2024-02-11', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (15, 6, '2024-04-16', 4);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (14, 9, '2024-01-09', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (3, 2, '2024-03-24', 5);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (15, 4, '2024-01-25', 2);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (2, 6, '2024-04-04', 1);
INSERT INTO Sales (customer_id, product_id, sale_date, quantity) VALUES (10, 6, '2024-02-05', 1);


-- =============================
-- 📊 Sales Analysis Queries
-- =============================

-- 1. Total Sales Revenue
SELECT 
    SUM(p.price * s.quantity) AS total_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id;

-- 2. Top 5 Customers by Spending
SELECT 
    c.name AS customer_name,
    SUM(p.price * s.quantity) AS total_spent
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- 3. Best-Selling Products
SELECT 
    p.product_name,
    SUM(s.quantity) AS total_units_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_units_sold DESC
LIMIT 5;

-- 4. Monthly Sales Trend
SELECT 
    DATE_FORMAT(s.sale_date, '%Y-%m') AS month,
    SUM(p.price * s.quantity) AS monthly_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 5. Sales by Region
SELECT 
    r.region_name,
    SUM(p.price * s.quantity) AS total_revenue
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Regions r ON c.region_id = r.region_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY r.region_id;

-- 6. Revenue by Product Category
SELECT 
    p.category,
    SUM(p.price * s.quantity) AS category_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;


-- =============================
-- 🧠 More Advanced SQL Queries
-- =============================

-- 7. Average Order Value Per Customer
SELECT 
    c.name AS customer_name,
    ROUND(SUM(p.price * s.quantity) / COUNT(s.sale_id), 2) AS avg_order_value
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY avg_order_value DESC;

-- 8. Customer with Longest Purchase History
SELECT 
    c.name,
    MIN(s.sale_date) AS first_purchase,
    MAX(s.sale_date) AS last_purchase,
    DATEDIFF(MAX(s.sale_date), MIN(s.sale_date)) AS days_between
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY days_between DESC
LIMIT 1;

-- 9. Top Selling Category
SELECT 
    category,
    SUM(quantity) AS total_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY category
ORDER BY total_sold DESC
LIMIT 1;

-- 10. Invoice-style Breakdown for All Sales

SELECT 
    s.sale_id,
    c.name AS customer,
    p.product_name,
    p.price,
    s.quantity,
    (p.price * s.quantity) AS total_amount,
    s.sale_date
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
ORDER BY s.sale_date DESC;

-- 11. Repeat Customers (2+ purchases)
SELECT 
    c.name,
    COUNT(s.sale_id) AS total_orders
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING COUNT(s.sale_id) >= 2
ORDER BY total_orders DESC;

-- 12. Customers Who Bought a Specific Product (e.g., "Laptop")
SELECT DISTINCT c.name
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
WHERE p.product_name = 'Laptop';

-- 13. Least Selling Products
SELECT 
    p.product_name,
    SUM(s.quantity) AS total_units_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_units_sold ASC
LIMIT 5;



-- 14. Daily Revenue
SELECT 
    sale_date,
    SUM(p.price * s.quantity) AS daily_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY sale_date
ORDER BY sale_date;

-- 15. Running Total of Revenue (Cumulative Sales)
SELECT 
    sale_date,
    SUM(p.price * s.quantity) AS daily_revenue,
    SUM(SUM(p.price * s.quantity)) OVER (ORDER BY sale_date) AS running_total
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY sale_date
ORDER BY sale_date;

-- 16. Total Revenue and Units Sold Per Product
SELECT 
    p.product_name,
    SUM(s.quantity) AS total_units,
    SUM(p.price * s.quantity) AS total_revenue
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- 17. Customers Who Bought More Than 10 Items Total
SELECT 
    c.name,
    SUM(s.quantity) AS total_items
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_id
HAVING total_items > 10
ORDER BY total_items DESC;

-- 18. Top Region by Revenue
SELECT 
    r.region_name,
    SUM(p.price * s.quantity) AS revenue
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Regions r ON c.region_id = r.region_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY r.region_id
ORDER BY revenue DESC
LIMIT 1;

-- 19. Revenue Contribution % by Category
SELECT 
    p.category,
    ROUND(SUM(p.price * s.quantity) * 100 / 
         (SELECT SUM(p2.price * s2.quantity)
          FROM Sales s2
          JOIN Products p2 ON s2.product_id = p2.product_id), 2) AS revenue_percent
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue_percent DESC;

-- 20. Most Frequently Bought Product by Each Customer
SELECT 
    c.name AS customer_name,
    p.product_name,
    SUM(s.quantity) AS times_bought
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
JOIN Products p ON s.product_id = p.product_id
GROUP BY c.customer_id, p.product_id
HAVING times_bought = (
    SELECT MAX(sub.quantity_sum)
    FROM (
        SELECT 
            SUM(s2.quantity) AS quantity_sum
        FROM Sales s2
        WHERE s2.customer_id = s.customer_id
        GROUP BY s2.product_id
    ) AS sub
)
ORDER BY c.customer_name;
