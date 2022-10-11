USE vk;
-- 1. Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

/*
SELECT
	 (SELECT lastname FROM users WHERE id = messages.from_user_id) AS lastname,
     (SELECT firstname FROM users WHERE id = messages.from_user_id) AS name,
     from_user_id,
	 count(*) AS cnt
FROM messages
WHERE to_user_id = 1 AND from_user_id IN (
     SELECT initiator_user_id FROM friend_requests 
     WHERE (target_user_id = 1) AND status ='approved'
     UNION
     SELECT target_user_id FROM friend_requests 
     WHERE (initiator_user_id = 1) AND status ='approved' )
GROUP BY from_user_id
ORDER BY cnt DESC
LIMIT 1;
*/

SELECT  lastname, firstname, m.from_user_id,  COUNT(*) AS cnt, m.to_user_id
FROM messages m
JOIN users u ON u.id = m.from_user_id
JOIN friend_requests fr ON
    	((fr.initiator_user_id = u.id AND fr.target_user_id = 1)
 		OR 
     	(fr.target_user_id = u.id AND fr.initiator_user_id = 1)) 
WHERE fr.status = 'approved' AND m.to_user_id = 1
GROUP BY u.id
ORDER BY u.id DESC
LIMIT 1;
 

-- 2. Подсчитать общее количество лайков, которые получили пользователи младше 11 лет.
/*
SELECT
	count(*) AS cnt_got_likes
FROM likes
WHERE media_id IN 
	(SELECT id FROM media WHERE user_id IN 
		(SELECT user_id FROM profiles WHERE YEAR(NOW())-YEAR(birthday) < 11));
*/
	
SELECT -- l.user_id,  l.media_id,
	 COUNT(*) AS cnt_got_likes
FROM likes l
JOIN media m ON l.media_id = m.id
JOIN profiles p ON p.user_id = m.user_id
WHERE YEAR(NOW())-YEAR(p.birthday) < 11;

	
-- 3. Определить кто больше поставил лайков (всего): мужчины или женщины.

/*
SELECT
(SELECT 
	CASE (gender)
         WHEN 'm' THEN 'мужской'
         WHEN 'f' THEN 'женский'
         ELSE 'другой'
    END AS gender
   FROM profiles WHERE user_id = likes.user_id ) AS gender,
count(*) AS likes
FROM likes
GROUP BY gender
LIMIT 1;
*/

SELECT 
	CASE (gender)
         WHEN 'm' THEN 'мужской'
         WHEN 'f' THEN 'женский'
    END AS gender,
    COUNT(*) AS likes
FROM profiles AS p 
JOIN likes AS l ON l.user_id = p.user_id 
GROUP BY gender
LIMIT 1;
