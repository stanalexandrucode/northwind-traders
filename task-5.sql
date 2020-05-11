SELECT  EXTRACT(YEAR FROM orders.order_date) AS year, EXTRACT(month FROM orders.order_date) AS month, COUNT(order_details.order_id),
       SUM(ROUND(order_details.unit_price*order_details.quantity*(1-order_details.discount))) AS revenue
FROM orders
JOIN order_details
ON orders.order_id = order_details.order_id
GROUP BY month, year
HAVING extract(YEAR FROM orders.order_date) = 1997