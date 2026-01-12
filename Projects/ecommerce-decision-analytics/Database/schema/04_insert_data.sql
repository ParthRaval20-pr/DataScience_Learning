INSERT INTO categories (category_name) VALUES
('Electronics'),
('Fashion'),
('Home & Kitchen'),
('Books'),
('Beauty');

INSERT INTO users (full_name, email, city, signup_date) VALUES
('Parth', 'parth@example.com', 'Rajkot', '2021-11-03'),
('Prem', 'prem@example.com', 'Ahmedabad', '2022-11-20'),
('Kerav', 'kerav@example.com', 'Jamnagar', '2023-05-03'),
('Kaushik', 'kaushik@example.com', 'Surat', '2020-03-30'),
('Vaibhav', 'vaibhav@example.com', 'Mumbai', '2021-02-25');

INSERT INTO products (product_name, category_id, list_price) VALUES
('Smartphone', 1, 25000),
('Laptop', 1, 60000),
('Jeans', 2, 2000),
('T-Shirt', 2, 800),
('Mixer Grinder', 3, 4500),
('Cookbook', 4, 1200),
('Face Cream', 5, 900);

INSERT INTO orders (user_id, order_date, order_status) VALUES
(1, '2023-02-01', 'DELIVERED'),
(1, '2023-03-10', 'DELIVERED'),
(2, '2023-03-18', 'DELIVERED'),
(3, '2023-03-25', 'DELIVERED'),
(3, '2023-04-15', 'CANCELLED'),
(4, '2023-04-20', 'DELIVERED'),
(5, '2023-05-02', 'DELIVERED');

INSERT INTO order_items (order_id, product_id, quantity, item_price) VALUES
(1, 1, 1, 24000),
(1, 3, 2, 1800),
(2, 2, 1, 58000),
(3, 4, 3, 750),
(4, 1, 1, 24500),
(4, 6, 1, 1100),
(6, 5, 1, 4300),
(7, 7, 2, 850);

INSERT INTO payments (order_id, payment_method, payment_status, amount_paid, payment_date) VALUES
(1, 'UPI', 'SUCCESS', 27600, '2023-02-01'),
(2, 'CARD', 'SUCCESS', 58000, '2023-03-10'),
(3, 'UPI', 'SUCCESS', 2250, '2023-03-18'),
(4, 'CARD', 'SUCCESS', 25600, '2023-03-25'),
(5, 'CARD', 'FAILED', 0, '2023-04-15'),
(6, 'NETBANKING', 'SUCCESS', 4300, '2023-04-20'),
(7, 'UPI', 'SUCCESS', 1700, '2023-05-02');








