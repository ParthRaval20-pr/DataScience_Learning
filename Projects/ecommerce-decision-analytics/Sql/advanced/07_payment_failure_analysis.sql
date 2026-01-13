-- Identifies payment methods causing revenue loss due to failed transactions
SELECT
    p.payment_method,
    COUNT(*) AS failed_transactions,
    SUM(oiv.order_value) AS potential_revenue_loss
FROM payments p
JOIN (
    SELECT
        o.order_id,
        SUM(oi.quantity * oi.item_price) AS order_value
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY o.order_id
) oiv
    ON p.order_id = oiv.order_id
WHERE p.payment_status = 'FAILED'
GROUP BY p.payment_method
ORDER BY potential_revenue_loss DESC;
