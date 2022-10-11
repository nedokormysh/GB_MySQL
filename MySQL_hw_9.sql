/*
Практическое задание по теме “Транзакции, переменные, представления”


-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
*/


DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
USE sample;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	birthday_at DATE DEFAULT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


SELECT * FROM users;

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM users;


-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

USE shop;

CREATE OR REPLACE VIEW products_with_catalogs (prod_id, prod_name, cat_name) AS 
SELECT p.id AS prod_id, p.name, cat.name
FROM products AS p
LEFT JOIN catalogs AS cat 
ON p.catalog_id = cat.id;

SELECT * FROM products_with_catalogs;

/*

 3. (по желанию) Пусть имеется таблица с календарным полем created_at. 
 В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17.
 Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

*/

-- 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, 
-- оставляя только 5 самых свежих записей.

DROP TABLE IF EXISTS temp;
CREATE TEMPORARY TABLE temp (created_at DATETIME);
INSERT INTO temp VALUES
						('2018-08-01'),
						('2018-08-02'),
						('2018-08-04'),
						('2018-08-12'),
						('2018-08-14'),
						('2018-08-17'),
						('2018-08-23'),
						('2018-08-27'),
						('2018-08-29'),
						('2018-08-31');
SELECT * FROM temp ORDER BY created_at;

PREPARE del_lim 
FROM  'DELETE FROM temp ORDER BY created_at LIMIT ?';
SET @num_to_del=(SELECT COUNT(*)-5 FROM temp);
SELECT @num_to_del;

EXECUTE del_lim USING @num_to_del;

SELECT * FROM temp ORDER BY created_at;


/* Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро",
с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
с 18:00 до 00:00 — "Добрый вечер",
с 00:00 до 6:00 — "Доброй ночи".
*/


DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
RETURNS TEXT DETERMINISTIC

BEGIN
	DECLARE greeting TEXT;
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SET greeting = 'Доброе утро';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SET greeting = 'Добрый день';
		WHEN CURTIME() BETWEEN '18:00:00' AND '23:59:59' THEN
			SET greeting = 'Добрый вечер';
		ELSE
			SET greeting = 'Доброй ночи';
	END CASE;
RETURN greeting;
END //
DELIMITER ;
SELECT hello();



/* процедура
DROP PROCEDURE IF EXISTS hello;
delimiter //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT 'Доброе утро';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT 'Добрый день';
		WHEN CURTIME() BETWEEN '18:00:00' AND '23:59:59' THEN
			SELECT 'Добрый вечер';
		ELSE
			SELECT 'Доброй ночи';
	END CASE;
END //
delimiter ;


*/


-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них.
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.


DROP TRIGGER IF EXISTS name_desc_both_not_null;

CREATE TRIGGER name_desc_both_not_null BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	-- IF COALESCE(NEW.name, NEW.description) <=> NULL THEN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Название или описание должно присутствовать';
	END IF;
END;


SELECT * from products;
INSERT INTO products (name, description, price, catalog_id) VALUE ("test name", "test desc", 123, 1);
UPDATE products SET name = NULL, description = NULL WHERE id = 8;


-- 3. (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи.
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.


DELIMITER //
DROP FUNCTION IF EXISTS FIBONACCI //
CREATE FUNCTION FIBONACCI(num INT)
RETURNS BIGINT DETERMINISTIC
BEGIN
	DECLARE res, a, b BIGINT;
    SET b = 0;
    SET a = 1;
    SET res = 0;
IF num >= 1 THEN REPEAT
   SET res = b + a;
   SET num = num - 1;
   SET b = a;
   SET a = res;
  UNTIL num <= 1
   END REPEAT;
  END IF;
RETURN res;	
END //

SELECT FIBONACCI (10)//
DELIMITER ;



/*
Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)
Создайте двух пользователей которые имеют доступ к базе данных shop. 
Первому пользователю shop_read должны быть доступны только запросы на чтение данных, второму пользователю shop — любые операции в пределах базы данных shop.

*/



DROP USER IF EXISTS 'shop_reader_1'@'localhost';
CREATE USER 'shop_reader_1'@'localhost' IDENTIFIED WITH sha256_password BY '111';
GRANT SELECT ON shop.* TO 'shop_reader_1'@'localhost';

-- проверка
INSERT INTO catalogs(name);
VALUES('New catalog');
SELECT * FROM catalogs;

-- shop - доступны любые операции в пределах базы данных shop
DROP USER IF EXISTS 'shop_reader_2'@'localhost';
CREATE USER 'shop_reader_2'@'localhost' IDENTIFIED WITH sha256_password BY '111';
GRANT ALL ON shop.* TO 'shop_reader_2'@'localhost';
GRANT GRANT OPTION ON shop.* TO 'shop_reader_2'@'localhost';

-- проверка
INSERT INTO catalogs(name);
VALUES('New catalog');
SELECT * FROM catalogs;



-- 2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. 
-- Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
-- Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.


DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	password VARCHAR(100)
);

INSERT INTO accounts VALUES
	(NULL, 'bob', '123'),
	(NULL, 'jack', '123'),
	(NULL, 'ron', '123');


CREATE OR REPLACE VIEW user_name(user_id, user_name) AS 
	SELECT id, name FROM accounts;



DROP USER IF EXISTS 'user_read'@'localhost';
CREATE USER 'user_read'@'localhost' IDENTIFIED WITH sha256_password BY '111';
GRANT SELECT ON shop.user_name TO 'user_read'@'localhost';



