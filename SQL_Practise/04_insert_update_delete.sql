-- Задание 4: INSERT / UPDATE / DELETE
-- Цель: научиться добавлять, изменять и удалять данные в таблицах

-- Таблицы для примера:
-- users (id, name, age, city)
-- orders (id, user_id, amount)


-- 1. Добавление нового пользователя

INSERT INTO users (id, name, age, city)
VALUES (6, 'Ivan', 28, 'Saint-P');


-- 2. Изменение данных существующего пользователя

UPDATE users
SET city = 'Saint-P', age = 35
WHERE id = 4;


-- 3. Удаление пользователя из таблицы
DELETE FROM users
WHERE id = 5;
