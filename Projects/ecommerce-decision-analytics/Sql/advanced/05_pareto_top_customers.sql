-- Identifies top 20% customers by lifetime value using Pareto principle
WITH customer_ltv AS (
    SELECT
        u.user_id,
        u.full_name,
        u.city,
        SUM(oi.quantity * oi.item_price) AS lifetime_value
    FROM users u
    JOIN orders o
        ON u.user_id = o.user_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'DELIVERED'
    GROUP BY u.user_id, u.full_name, u.city
),
ranked_customers AS (
    SELECT
        *,
        ROW_NUMBER() OVER (ORDER BY lifetime_value DESC) AS rn,
        COUNT(*) OVER () AS total_customers
    FROM customer_ltv
)
SELECT
    user_id,
    full_name,
    city,
    lifetime_value
FROM ranked_customers
WHERE rn <= CEILING(0.2 * total_customers)
ORDER BY lifetime_value DESC;
