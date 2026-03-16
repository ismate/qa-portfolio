
SELECT users.name, orders.id
FROM orders
JOIN users ON users.id = orders.user_id;
