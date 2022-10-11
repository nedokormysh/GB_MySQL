
USE marketplace;



-- ПРОЦЕДУРЫ и ФУНКЦИИ
-- 1)
-- Создадим функцию расчёта суммы заказа. 


DROP FUNCTION IF EXISTS order_summ;

DELIMITER //
CREATE FUNCTION order_summ(ord_num INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE res INT;
    	
	SET res =  ( SELECT	SUM(t.price * t.amount) AS s
				 FROM (SELECT opl.product_id, p.price, opl.amount  FROM order_product_list opl
				 JOIN product p ON p.id = opl.product_id 
				 WHERE opl.order_id = ord_num) AS t);
   
RETURN res;	
END
//

DELIMITER ;
SELECT order_summ (99);



-- 2)
-- Создадим процедуру записи суммы заказа в таблицу заказов для всех заказов
DELIMITER //
DROP PROCEDURE IF EXISTS order_sum_all//


CREATE PROCEDURE order_sum_all()
BEGIN 
	DECLARE i INT;
	SET i = 1;
	WHILE i <= 100 DO
		UPDATE orders SET summ = (SELECT order_summ (i)) WHERE id = i;		
		SET i = i + 1;
	END WHILE;
END //
DELIMITER ;
CALL order_sum_all();

-- 3) 
-- Создадим процедуру нахождения самого трёх самых популярных товаров у пользователя (по количеству товара)
DROP PROCEDURE IF EXISTS popular_item;

DELIMITER //

CREATE PROCEDURE popular_item (IN client_id INT)
	BEGIN
		SELECT  opl.product_id, p.product_name, SUM(opl.amount) AS total  
		FROM orders o
		JOIN client c ON o.client_id = c.id
		JOIN order_product_list opl ON o.id = opl.order_id
		JOIN product p ON opl.product_id = p.id 
		WHERE c.id = client_id
		GROUP BY opl.product_id
		ORDER BY total DESC 
		LIMIT 3;
	END//

DELIMITER ;
CALL popular_item (73);


-- ПРЕДСТАВЛЕНИЯ

-- 1)
-- Создадим представление всех людей с городом проживания
DROP VIEW IF EXISTS v_all_ppl;

CREATE OR REPLACE VIEW v_all_ppl
AS
SELECT CONCAT(cl.firstname,' ', cl.lastname) AS ppl, address_id  FROM client cl
UNION
SELECT CONCAT(cr.firstname,' ', cr.lastname) AS ppl, address_id  FROM courier cr;


-- 2)
-- Создадим представление номера заказа с именем курьера и городом и адресом доставки

DROP VIEW IF EXISTS v_ord_del_address;

CREATE OR REPLACE VIEW v_ord_del_address
AS
SELECT o.id AS order_id, CONCAT(cr.firstname,' ', cr.lastname) AS courier_name, c.city, a.address FROM delivery d
JOIN courier cr ON d.courier_id = cr.id 
JOIN orders o ON d.id = o.delivery_id 
JOIN address a ON d.address_id = a.id 
JOIN city c ON a.city_id = c.id ;



-- SELECTS


-- 1)
-- найдём самый большой город по количеству проживающих в нём людей из клиентов и курьеров.

SELECT COUNT(*) AS cnt, ct.city FROM 
(SELECT CONCAT(cl.firstname,' ', cl.lastname) AS ppl_name, cl.address_id AS ppl_address
FROM client cl
UNION
SELECT CONCAT(cr.firstname,' ', cr.lastname) AS ppl_name, cr.address_id AS ppl_address
FROM courier cr)
as ppl
JOIN address a ON ppl.ppl_address = a.id
JOIN city ct ON a.city_id = ct.id
GROUP BY ct.id
ORDER BY cnt DESC
LIMIT 1;

-- 1)*
-- Найдём самый густонаселённый город при помощи представления


SELECT COUNT(*) AS amount_of_people, ct.city  FROM v_all_ppl ap 
JOIN address a ON a.id = ap.address_id
JOIN city ct ON a.city_id = ct.id
GROUP BY ct.id
ORDER BY amount_of_people DESC
LIMIT 1; 


-- 2)

-- Просмотр топ-5 клиентов по количеству заказов:

SELECT  c.id, CONCAT(c.firstname,' ', c.lastname) AS client, count(*) AS amount_of_orders FROM client c
JOIN orders o 
ON c.id = o.client_id 
GROUP BY c.id
ORDER BY amount_of_orders DESC
LIMIT 5;



-- 3) 
-- Найдём заказы определённого пользователя 
SELECT c.id AS client_id, CONCAT(c.firstname,' ', c.lastname) AS client_name, o.id AS order_id, o.delivery_id
FROM client c 
JOIN orders o ON c.id = o.client_id
WHERE c.id = 73;


-- 3)*
-- Найдём заказы определённого пользователя  через вложенные запросы
SELECT o.client_id,
	  (SELECT CONCAT(c.firstname,' ', c.lastname) FROM client c WHERE c.id = o.client_id) AS client_name,
	  o.id AS order_id, o.delivery_id  
FROM orders o 
WHERE o.client_id = 73;

-- 4 )
-- Найдём кто потратил больше всего денег в процентном соотношении от общей суммы заказов всех клиентов

SELECT o.client_id, CONCAT(c.firstname,' ', c.lastname) AS client, SUM(o.summ) / (SELECT SUM(summ) FROM orders) * 100 AS perc
FROM orders o
JOIN client c ON o.client_id = c.id 
GROUP BY client_id
ORDER BY perc DESC
LIMIT 1;


-- 5)
-- Найдём сумму проданных товаров, у которых цена менее 100

SELECT SUM(o.summ)
FROM orders o 
JOIN order_product_list opl ON opl.order_id = o.id
WHERE opl.product_id IN (SELECT id FROM product WHERE price < 1000);


-- 6)
-- Найдём сумму платежей пользователей, чья фамилия начинается на B

SELECT o.client_id,
	   (SELECT CONCAT(c.lastname,' ', c.firstname) FROM client c WHERE c.id = o.client_id) AS client_name,
	   SUM(o.summ) AS SUMM
FROM orders o
WHERE client_id IN (
	SELECT id FROM client
	WHERE LEFT(lastname, 1)='B')
GROUP BY client_id
ORDER BY SUMM DESC;



-- 7)
-- Найдём какой заказ нужно в какой город отвезти

SELECT o.id AS order_id, c.city 
FROM orders o 
LEFT JOIN delivery d ON d.id = o.delivery_id
JOIN address a ON a.id = d.address_id
JOIN city c ON c.id = a.city_id;

-- 7)*
-- Найдём какой заказ нужно в какой город отвезти через представление.

SELECT oda.order_id, oda.city FROM v_ord_del_address oda ;




-- ТРИГГЕРЫ
-- 1)
-- Проверка на то, чтобы было указано количество 
DROP TRIGGER IF EXISTS t_check_amount;

DELIMITER //

CREATE TRIGGER t_check_amount BEFORE UPDATE ON order_product_list FOR EACH ROW 
BEGIN
	IF(NEW.amount = 0) THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Необходимо указать количество товара';
	END IF;
END
//
DELIMITER ;


-- SELECT * from order_product_list;
-- UPDATE order_product_list SET amount = 0 WHERE order_id = 100;


-- 2)
-- Проверка правильности присвоения категории. Если категория, указана не из списка, то назначается нулевая категория.

DROP TRIGGER IF EXISTS t_check_category_id_insert;

DELIMITER //

CREATE TRIGGER t_check_category_id_insert BEFORE INSERT ON product FOR EACH ROW
BEGIN 
  IF NEW.category_id NOT IN (SELECT id FROM category)  THEN
  	SET NEW.category_id = 0;
   -- SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Товару не была присвоена категория. Автоматически присвоена категория: без категории';
  END IF;
END
//

DELIMITER ;

-- SET foreign_key_checks = 0; 
-- INSERT INTO product VALUES (104,'монитор', 15 ,4681.40,'1991-05-03 20:10:25','1976-12-13 16:33:48','\0');
-- SELECT * FROM product p ORDER BY id DESC LIMIT 1;
