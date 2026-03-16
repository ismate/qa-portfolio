-- Задание 3: GROUP BY + ORDER BY + HAVING
-- Цель: научиться группировать данные, фильтровать агрегаты и сортировать результаты

-- Таблицы для примера:
-- users (id, name, age, city)
-- orders (id, user_id, amount)

-- 1. Для каждого города посчитать:
--    - количество пользователей
--    - общую сумму всех заказов пользователей из этого города

-- 2. Отобразить только те города, где количество пользователей больше 2

-- 3. Отсортировать результаты по общей сумме заказов по убыванию

SELECT COUNT(*), SUM(orders.amount)
FROM users
JOIN orders ON orders.user_id = users.id
GROUP BY users.city
HAVING COUNT(users.id) > 2
ORDER BY SUM(orders.amount) DESC;

