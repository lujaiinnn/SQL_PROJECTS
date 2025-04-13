-- Top 5 customers by total spending
SELECT c.name, SUM(p.price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly Sales
SELECT strftime('%Y-%m', o.order_date) AS month, 
       SUM(p.price * od.quantity) AS revenue
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- Most Popular Products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_sold DESC
LIMIT 10;

-- Average Order Value
SELECT AVG(order_total) AS avg_order_value
FROM (
  SELECT o.order_id, SUM(p.price * od.quantity) AS order_total
  FROM Orders o
  JOIN OrderDetails od ON o.order_id = od.order_id
  JOIN Products p ON od.product_id = p.product_id
  GROUP BY o.order_id
);
