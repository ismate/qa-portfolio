-- Задание 1: SELECT + WHERE
-- Цель: научиться выбирать данные с фильтрацией по условиям

-- Таблица: users (id, name, age, city, email)

-- 1. Выбрать всех пользователей, которые живут в Москве
SELECT * 
FROM users 
WHERE city = 'Moscow';

-- 2. Выбрать имя и email всех пользователей старше 25 лет
SELECT name, email 
FROM users 
WHERE age > 25;
