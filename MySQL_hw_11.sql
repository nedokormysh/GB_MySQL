/*
Практическое задание по теме “Оптимизация запросов”
1) Создайте таблицу logs типа Archive.
Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs
 помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

*/

USE shop;

DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
	id BIGINT NOT NULL,
	created_at DATETIME NOT NULL,
	table_name VARCHAR(20) NOT NULL,	
	name VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;


DROP TRIGGER IF EXISTS t_catalog_log;
delimiter //
CREATE TRIGGER t_catalog_log AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	   INSERT INTO logs 
       SET id = NEW.id, created_at = NOW(), table_name = 'catalogs', name = NEW.name;
END
delimiter ;


DROP TRIGGER IF EXISTS t_users_log;
delimiter //
CREATE TRIGGER t_users_log AFTER INSERT ON users
FOR EACH ROW
BEGIN
		INSERT INTO logs 
        SET id = NEW.id, created_at = NOW(), table_name = 'users', name = NEW.name;
END //
delimiter ;


DROP TRIGGER IF EXISTS t_products_log;
delimiter //
CREATE TRIGGER t_products_log AFTER INSERT ON products
FOR EACH ROW
BEGIN
	    INSERT INTO logs 
        SET id = NEW.id, created_at = NOW(), table_name = 'products', name = NEW.name;
END //
delimiter ; 



INSERT INTO users (name) VALUES ('jo');

SELECT * FROM users;
SELECT * FROM logs;


-- 2) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP TABLE IF EXISTS users;
CREATE TABLE users
(
       id SERIAL PRIMARY KEY,
       name VARCHAR(255),
       created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
       updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

delimiter //
DROP PROCEDURE IF EXISTS add_1M_users//
CREATE PROCEDURE add_1M_users()
BEGIN
	DECLARE i INT;
	SET i = 1;
	WHILE i <= 1000000 DO
		INSERT INTO users VALUES(NULL, CONCAT('user_', i) , NOW(), NOW());
		SET i = i + 1;
	END WHILE;
END //
delimiter ;


CALL add_1M_users();
SELECT count(*) AS cnt FROM users u ;
SELECT * FROM users ORDER BY id DESC LIMIT 5;