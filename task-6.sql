SELECT customers.company_name, COUNT(customers.customer_id), STRING_AGG(orders.order_id ::varchar,', ') AS order_ids
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.company_name, customers.country
HAVING customers.country = 'USA' AND COUNT(customers.customer_id) < 5
ORDER BY 2;