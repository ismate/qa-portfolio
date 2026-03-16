-- Задание 2: JOIN + COUNT/SUM/AVG
-- Цель: научиться объединять таблицы и использовать агрегатные функции

-- Таблицы для примера:
-- users (id, name, age, city)
-- orders (id, user_id, amount)

-- 1. Выбрать все заказы вместе с именами пользователей, кто их сделал

SELECT users.name, orders.id
FROM orders
JOIN users ON users.id = orders.user_id;

-- 2. Посчитать для каждого пользователя:
--    - количество заказов
--    - общую сумму заказов
--    - среднюю сумму заказа

SELECT COUNT(orders.id), SUM(orders.amount), AVG(orders.amount)
FROM orders
JOIN users ON users.id = orders.user_id
GROUP BY users.name;

