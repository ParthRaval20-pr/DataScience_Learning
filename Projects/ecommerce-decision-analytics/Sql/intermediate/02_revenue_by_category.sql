-- Identifies revenue-driving categories vs high-volume low-value categories
SELECT
	c.category_name,
    SUM(oi.quantity * oi.item_price) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM categories c
JOIN products p
	ON c.category_id = p.category_id
JOIN order_items oi
	ON p.product_id = oi.product_id
JOIN orders o
	ON oi.order_id = o.order_id
WHERE o.order_status = 'DELIVERED'
GROUP BY c.category_name
ORDER BY total_revenue DESC;