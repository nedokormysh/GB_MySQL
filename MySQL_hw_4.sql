USE vk;

-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке.
SELECT DISTINCT firstname FROM users
ORDER BY firstname  LIMIT 5;

-- Первые пять пользователей пометить как удаленные.

SELECT id, lastname, is_deleted FROM users LIMIT 5;


UPDATE users
SET is_deleted = 1
ORDER BY id ASC 
LIMIT 5;

SELECT id, lastname, is_deleted FROM users LIMIT 5;

-- Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней).

UPDATE messages 
SET created_at = created_at + INTERVAL 5 YEAR 
WHERE from_user_id BETWEEN 4 AND 20;


SELECT created_at FROM messages 
WHERE created_at > NOW();

DELETE FROM messages
WHERE created_at > NOW();

SELECT created_at FROM messages 
WHERE created_at > NOW();

-- Написать название темы курсового проекта.

-- Тема курсового проекта: доставка из магазина