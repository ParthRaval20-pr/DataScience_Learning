-- Identifies repeat customers with more than one delivered order
SELECT
    u.user_id,
    u.full_name,
    COUNT(o.order_id) AS delivered_orders
FROM users u
JOIN orders o
    ON u.user_id = o.user_id
WHERE o.order_status = 'DELIVERED'
GROUP BY u.user_id, u.full_name
HAVING COUNT(o.order_id) > 1;
