USE shop;

-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT u.id, u.name AS 'name'
FROM users AS u JOIN orders AS o
ON u.id = o.user_id;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.name AS 'product name', c.name AS 'catalog name'
FROM products AS p LEFT JOIN catalogs AS c
ON p.catalog_id = c.id;

/*3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label,
name). Поля from, to и label содержат английские названия городов, поле name — русское.
Выведите список рейсов flights с русскими названиями городов.*/



DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_c VARCHAR(255),
  to_c VARCHAR(255)
);


INSERT INTO flights VALUES
  (NULL, 'moscow', 'omsk'),
  (NULL, 'novgorod', 'kazan'),
  (NULL, 'irkutsk', 'moscow'),
  (NULL, 'omsk', 'irkutsk'),
  (NULL, 'moscow', 'kazan');
  
 
 
DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
);

INSERT INTO cities VALUES
  ('moscow', 'Москва'),
  ('novgorod', 'Новгород'),
  ('irkutsk', 'Иркутск'),
  ('omsk', 'Омск'),
  ('kazan', 'Казань');
  

SELECT id, c1.name, c2.name
FROM flights AS f
LEFT JOIN cities AS c1 ON f.from_c = c1.label
LEFT JOIN cities AS c2 ON f.to_c = c2.label;