-- ЗАДАЧА 1
-- 1. Создание БД
CREATE DATABASE IF NOT EXISTS dz1_phone;

-- 2. Подключение к БД
USE dz1_phone;

-- 3. Создание таблицы
DROP TABLE phone_table; -- удаление одноименной таблицы, если существует
CREATE TABLE phone_table
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(15),
    manufacturer VARCHAR(15),
    product_count INT,
    price INT
);

-- 4. Просмотр структуры таблицы
DESC phone_table;

-- 5. Заполнение таблицы
INSERT INTO phone_table(product_name, manufacturer, product_count, price)
VALUE
    ("iPhone X" , "Apple" , "3" , "76000"),
    ("iPhone 8" , "Apple" , "2" , "51000"),
    ("Galaxy S9" , "Samsung" , "2" , "56000"),
    ("Galaxy S8" , "Samsung" , "1" , "41000"),
    ("P20 Pro" , "Huawei", "5" , "36000");

-- 6. Вывод содержиого на экран
SELECT *
FROM phone_table;

-- ЗАДАЧА 2
-- 7. Вывод названия, производителя и цены для товаров, количество которых превышает 2
SELECT product_name, manufacturer, price
FROM phone_table
WHERE product_count >= 2;

-- ЗАДАЧА 3
-- 8. Вывод всего ассортимента товаров марки “Samsung”
SELECT *
FROM phone_table
WHERE manufacturer = "Samsung";

-- ЗАДАЧА 4
-- 9. Вывод информации о телефонах, где суммарный чек больше 100 000 и меньше 145 000**
SELECT *
FROM phone_table
WHERE product_count * price > 100000 AND product_count * price < 145000;

-- ЗАДАЧА 4.1
-- 10. Найти товары, в которых есть упоминание "iPhone"
SELECT product_name
FROM phone_table
WHERE product_name LIKE "iPhone%";

-- ЗАДАЧА 4.2
-- 11. Найти товары, в которых есть упоминание "Galaxy"
SELECT product_name
FROM phone_table
WHERE product_name LIKE "Galaxy%";

-- ЗАДАЧА 4.3
-- 12. Найти товары, в которых есть цифры
SELECT product_name
FROM phone_table
WHERE product_name RLIKE "[0-9]";

-- ЗАДАЧА 4.4
-- 13. Найти товары, в которых есть цифра 8
SELECT product_name
FROM phone_table
WHERE product_name LIKE "%8%";