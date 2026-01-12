-- Identifies high-activity but low-value cities using AOV
SELECT
	u.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.item_price) AS total_revenue,
    ROUND(
		SUM(oi.quantity * oi.item_price) / COUNT(DISTINCT o.order_id),
        2
        ) AS avg_order_value
FROM users u
JOIN orders o
	ON u.user_id = o.user_id
JOIN order_items oi
	ON o.order_id = oi.order_id
WHERE o.order_status = 'DELIVERED'
GROUP BY u.city
ORDER BY total_orders DESC, avg_order_value ASC;