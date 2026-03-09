-- Total Revenue
SELECT 
SUM(price + freight_value) AS total_revenue
FROM order_items;

-- Total Orders
SELECT 
COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Average Order Value
SELECT 
SUM(price + freight_value) / COUNT(DISTINCT order_id) AS avg_order_value
FROM order_items;

-- Top 10 Product Categories by Revenue
SELECT 
p.product_category_name,
SUM(oi.price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;

-- Total Customers
SELECT 
COUNT(DISTINCT customer_unique_id) AS total_customers
FROM customers;

-- Repeat Customers
SELECT 
customer_unique_id,
COUNT(order_id) AS orders
FROM orders
GROUP BY customer_unique_id
HAVING COUNT(order_id) > 1;

-- Top Sellers by Revenue
SELECT 
seller_id,
SUM(price) AS revenue
FROM order_items
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 10;

-- Average Delivery Time
SELECT 
AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS avg_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

-- Revenue by Month
SELECT 
DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS month,
SUM(price) AS revenue
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;

-- Late Deliveries
SELECT 
COUNT(*) AS late_orders
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;

-- Revenue by State
SELECT 
c.customer_state,
SUM(oi.price) AS revenue
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;
