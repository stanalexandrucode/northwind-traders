SELECT products.product_name AS product, suppliers.company_name AS company
FROM products JOIN suppliers ON suppliers.supplier_id = products.supplier_id
ORDER BY product_name;