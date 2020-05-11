SELECT category, COUNT(*) AS number_of_products
FROM (
	SELECT categories.category_name AS category, products.units_in_stock AS number_of_products
	FROM categories JOIN products  ON products.category_id=categories.category_id
	) AS total
GROUP BY category
ORDER BY number_of_products DESC;