-- Calculates customer lifetime value and ranks customers by total revenue
SELECT
	u.user_id,
    u.full_name,
    u.city,
    SUM(oi.quantity * oi.item_price) AS lifetime_value,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
		SUM(oi.quantity * oi.item_price) / COUNT(DISTINCT o.order_id),
        2
    ) AS avg_order_value,
    ROW_NUMBER() OVER (
    ORDER BY SUM(oi.quantity * oi.item_price) DESC
) AS value_rank
FROM users u
JOIN orders o
	ON u.user_id = o.user_id
JOIN order_items oi
	ON o.order_id = oi.order_id
WHERE o.order_status = 'DELIVERED'
GROUP BY u.user_id, u.full_name, u.city
ORDER BY lifetime_value DESC