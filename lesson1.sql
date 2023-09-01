-- Однострочный комментарий. После "--" пробел обязательный

/*
Это
многострочный
комментарий
*/

-- snake_case, старайтесь избегать множественного числа в именованиях
-- 1. Создание БД
CREATE DATABASE IF NOT EXISTS lesson_1; -- СОздание БД, ЕСЛИ она не существет

-- 2. Подключение к БД
USE lesson_1;

-- 3. Создание таблицы - student
DROP TABLE student; -- удаление таблицы student, если она существует
CREATE TABLE student
(
    -- имя_столбца тип_данных ограничения
    id INT PRIMARY KEY AUTO_INCREMENT, -- Инкремент: i++ (i = i + 1) => id++ (id = id + 1)
    first_name VARCHAR(45), -- Имя селоаека, представленное строчкой на 45 символов
    gmail VARCHAR(45)
);

-- 4. Просмотр структуры таблицы
DESC student;

-- 5. Заполнение таблицы
INSERT student(first_name, gmail)
VALUE
    ("Alex" , "alex@gmail.com"), -- id = 1
    ("Andrey" , "andrey@gmail.com"), -- id = 2
    ("Artem" , "artem@gmail.com"), -- id = 3
    ("Alexander" , "alexander@gmail.com"), -- id = 4
    ("Viktor" , "viktor@gmail.com"); -- id = 5

-- 6. Вывод содержимого на экран
SELECT *
FROM student;

-- 7. Потребуется ФИО и почта ученика
SELECT first_name, gmail
FROM student;

-- 8. Получить почту Андрея
SELECT first_name, gmail
FROM student
WHERE first_name = "Andrey";

-- 9. Потребуется ФИО и почта ученика (исключаем Андрея)
SELECT first_name, gmail
FROM student
WHERE first_name != "Andrey";

SELECT first_name, gmail
FROM student
WHERE first_name <> "Andrey"; -- != и <> одно и то же

-- 10. Найти информацию о студентах, имя которых начинается с "А"
SELECT first_name
FROM student
WHERE first_name LIKE "A%";

-- 10. Найти информацию о студентах, имя которых начинается с "А"
SELECT first_name
FROM student
WHERE first_name LIKE "A%t__";
