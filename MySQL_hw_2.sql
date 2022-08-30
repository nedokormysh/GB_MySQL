/*2. Создайте базу данных example, разместите в ней таблицу users,
 *  состоящую из двух столбцов, числового id и строкового name.*/


CREATE DATABASE IF NOT EXISTS example;
SHOW DATABASES;
USE example;

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);


INSERT INTO users VALUES
  (0, 'First Name'),
  (0, 'Second Name'),
  (0, 'Third Name');

SELECT * FROM users;


/*3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.;*/

CREATE DATABASE IF NOT EXISTS sample;

-- mysqldump example > dump_example.sql
-- mysql sample < dump_example.sql

SHOW DATABASES;
DESCRIBE sample.users;

/* 4.(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql.
* Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.*/

-- mysqldump --where="true limit 100" mysql help_keyword > first100mysql_dump.sql 