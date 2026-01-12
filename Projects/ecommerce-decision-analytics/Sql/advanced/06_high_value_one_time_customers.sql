WITH customer_metrics AS (
    SELECT
        u.user_id,
        u.full_name,
        u.city,
        COUNT(DISTINCT o.order_id) AS total_orders,
        SUM(oi.quantity * oi.item_price) AS lifetime_value
    FROM users u
    JOIN orders o
        ON u.user_id = o.user_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'DELIVERED'
    GROUP BY u.user_id, u.full_name, u.city
),
avg_ltv AS (
    SELECT AVG(lifetime_value) AS avg_ltv
    FROM customer_metrics
)
SELECT
    cm.user_id,
    cm.full_name,
    cm.city,
    cm.total_orders,
    cm.lifetime_value
FROM customer_metrics cm
JOIN avg_ltv a
    ON cm.lifetime_value >= a.avg_ltv
WHERE cm.total_orders = 1
ORDER BY cm.lifetime_value DESC;
