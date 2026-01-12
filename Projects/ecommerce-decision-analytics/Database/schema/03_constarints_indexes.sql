CREATE INDEX idx_users_signup_date ON users (signup_date);

CREATE INDEX idx_orders_user_id ON orders (user_id);
CREATE INDEX idx_orders_order_date ON orders (order_date);

CREATE INDEX idx_order_items_order_id ON order_items (order_id);
CREATE INDEX idx_order_items_product_id ON order_items (product_id);

CREATE INDEX idx_products_category_id ON products (category_id);

CREATE INDEX idx_payments_order_id ON payments (order_id);
CREATE INDEX idx_payments_payment_status ON payments (payment_status);
