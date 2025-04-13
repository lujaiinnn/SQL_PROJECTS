-- Sample inserts using generate_series (PostgreSQL or SQLite-compatible)

-- Insert 100 Products
INSERT INTO Products (product_id, product_name, category, price)
SELECT i, 'Product_' || i, 
       CASE WHEN i % 3 = 0 THEN 'Electronics'
            WHEN i % 3 = 1 THEN 'Clothing'
            ELSE 'Home' END,
       ROUND(RANDOM() % 100 + 10, 2)
FROM generate_series(1, 100) AS s(i);

-- Insert 500 Customers
INSERT INTO Customers (customer_id, name, email, join_date)
SELECT i, 'Customer_' || i, 'cust_' || i || '@email.com',
       DATE('2020-01-01', '+' || (RANDOM() % 1000) || ' days')
FROM generate_series(1, 500) AS s(i);

-- Insert 1000 Orders
INSERT INTO Orders (order_id, customer_id, order_date)
SELECT i, (RANDOM() % 500) + 1,
       DATE('2021-01-01', '+' || (RANDOM() % 700) || ' days')
FROM generate_series(1, 1000) AS s(i);

-- Insert 2000 OrderDetails
INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity)
SELECT i, (RANDOM() % 1000) + 1, (RANDOM() % 100) + 1, (RANDOM() % 5) + 1
FROM generate_series(1, 2000) AS s(i);
