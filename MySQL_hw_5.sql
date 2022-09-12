USE shop;

-- Операторы, фильтрация, сортировка и ограничение
/* 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
*/

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	created_at datetime,
	updated_at datetime
);

-- заполним таблицу
INSERT INTO users (created_at, updated_at)
VALUES(NULL, NULL),
(NULL, NULL),
(NULL, NULL);


UPDATE users
SET created_at  = NOW() AND updated_at = NOW();

-- SELECT created_at FROM users;

/*2. Таблица users была неудачно спроектирована.
 *  Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10.
 *  Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
 */

DROP TABLE IF EXISTS users;

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
);

INSERT INTO users (created_at, updated_at)
VALUES ('20.10.2013 8:10', '20.10.2020 8:10'),
	   ('20.10.2014 8:10', '20.10.2021 8:10');
	   
UPDATE users 
SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'),
    updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');

-- SELECT created_at, updated_at FROM users;
 
ALTER TABLE users 
CHANGE created_at created_at DATETIME,
CHANGE updated_at updated_at DATETIME;


-- SELECT created_at, updated_at FROM users;

/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
 * 0, если товар закончился и выше нуля, если на складе имеются запасы. 
 * Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
 * Однако нулевые запасы должны выводиться в конце, после всех записей.
*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products(
	id SERIAL PRIMARY KEY,
	storehouse_id INT UNSIGNED,
	product_id INT UNSIGNED,
	value INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO storehouses_products (storehouse_id, 
product_id, value, created_at, updated_at) VALUES
	(1, 1, 2, NOW(), NOW()),
	(2, 2, 1, NOW(), NOW()),
	(3, 3, 5, NOW(), NOW()),
	(4, 4, 0, NOW(), NOW()),
	(5, 5, 4, NOW(), NOW()),
	(6, 6, 3, NOW(), NOW())
;
	
-- SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;
SELECT * FROM storehouses_products ORDER BY value=0, value;

/*4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
 * Месяцы заданы в виде списка английских названий (may, august)*/


DROP TABLE IF EXISTS users;

CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255),
	birthday_at DATE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
	


INSERT INTO users (id, name, birthday_at) VALUES
	(1, 'First', '1979-01-27'),
	(2, 'First', '1979-08-27'),
	(3, 'Third', '1979-05-27')
;
	

SELECT name, birthday_at FROM users WHERE MONTHNAME(birthday_at) IN ('may', 'august');


/*5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
 * Отсортируйте записи в порядке, заданном в списке IN.*/

DROP TABLE IF EXISTS catalogs;

CREATE TABLE catalogs(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO catalogs (id, name) VALUES
	(1, 'Processors'),
	(2, 'Motherboards'),
	(5, 'Graphics_cards')
;

SELECT * FROM catalogs
WHERE id IN (5, 1, 2) 
ORDER BY CASE
    WHEN id = 5 THEN 0
    WHEN id = 1 THEN 1
    WHEN id = 2 THEN 2
END;

-- Агрегация данных
/*1. Подсчитайте средний возраст пользователей в таблице users. */

SELECT ROUND(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25), 0) AS AVG_Age FROM users;

/*2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.*/
/*-
SELECT birthday_at FROM users;
SELECT SUBSTRING(birthday_at, 6, 10) FROM users;
SELECT (CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) FROM users;*/

SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS day_of_week,
    COUNT(*) AS amount_of_birthdays
FROM
    users    
GROUP BY 
    day_of_week
ORDER BY
	amount_of_birthdays DESC;

/* 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы.*/

DROP TABLE IF EXISTS random_integers;
CREATE TABLE random_integers(
    integ INT
);

INSERT INTO random_integers (integ) VALUES
	(1),
	(2),
	(3),
	(4),
	(5)
;

SELECT EXP(SUM(LOG(integ))) AS X FROM random_integers;