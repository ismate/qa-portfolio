-- Задание 5: комбинированная практика SQL
-- Цель: закрепить SELECT, JOIN, агрегаты, GROUP BY, HAVING, ORDER BY

-- Таблицы для примера:
-- users (id, name, age, city)
-- orders (id, user_id, amount)

--------------------------------------------------------
-- 1. Для каждого пользователя посчитать:
--    - количество заказов
--    - общую сумму заказов
--    - среднюю сумму заказа
SELECT users.name, COUNT(*), SUM(orders.amount), AVG(orders.amount)
FROM orders
JOIN users ON users.id = orders.user_id
GROUP BY users.name;
--------------------------------------------------------
-- 2. Для каждого города посчитать:
--   -количество пользователей
--   -общую сумму заказов всех пользователей города
-- Отобразить только города, где пользователей больше 2
-- Отсортировать по сумме заказов по убыванию
SELECT users.city, COUNT(users.id), SUM(orders.amount)
FROM users
JOIN orders ON users.id = orders.user_id
GROUP BY users.city
HAVING COUNT(users.id) > 2
ORDER BY SUM(orders.amount) DESC;

