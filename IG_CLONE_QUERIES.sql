-- Active: 1734413285936@@127.0.0.1@3306@ig_clone

SHOW TABLES;
SELECT * FROM comments;

-- TO FIND THE OLDEST 5 USER IN DATABASE:
SELECT * FROM users;
SELECT * FROM users
ORDER BY created_at
LIMIT 5;

--TO  FIND THE MOST POPULAR DAY WHEN USER REGISTER:
SELECT 
    DAYNAME(created_at) AS 'day_rg',
    COUNT(*) AS 'rg_ct'
FROM users
GROUP BY day_rg
ORDER BY rg_ct DESC
LIMIT 1;

--FIND THE USER WHO HAVE NEVER POSTED OR INACTIVE:
SELECT * FROM users;
SELECT * FROM photos;
SELECT 
    username
FROM users
LEFT JOIN photos ON photos.user_id=users.id
WHERE photos.id IS NULL;

-- WHAT IS MOST POPULAR LIKE PHOTO AND IT USERNAME :
SELECT * FROM likes;
SELECT 
    photo_id,
    image_url,
    username,
    COUNT(*) as 'max_likes'
FROM photos
INNER JOIN likes ON likes.photo_id=photos.id
INNER JOIN users ON photos.user_id=users.id
GROUP BY photo_id
ORDER BY max_likes DESC
 LIMIT 1;

--MOST POST USER:

SELECT
    username,
    user_id,
    COUNT(*) AS 'total'
FROM photos
INNER JOIN users ON users.id=photos.user_id
GROUP BY user_id
ORDER BY total DESC
LIMIT 1;

--HOW MANY TIMES DOES AVERAGE USER MOST

SELECT
    COUNT(photos.id) AS 'photos_total',
    COUNT(users.id) AS 'users_total',
    AVG(photos.id) / AVG(users.id) AS 'avg'
FROM photos
INNER JOIN users ON users.id=photos.user_id;

SELECT (SELECT Count(*)  FROM   photos) / (SELECT Count(*) FROM   users) AS 'avg'; 

SELECT * FROM photos;
SELECT * FROM users;

SELECT (SELECT SUM(photos.id)/COUNT(*)  FROM photos)/(SELECT SUM(users.id)/COUNT(*)  FROM users) as 'avg';

--WHAT ARE THE TOP 5 MOST COMMANLY USED HASHTAGS:

SELECT * from tags;
SELECT * FROM photo_tags;

SELECT 
    tag_id,
    tag_name,
    COUNT(*) AS 'use_tag_id'
FROM tags
INNER JOIN photo_tags ON photo_tags.tag_id=tags.id
GROUP BY tag_id
ORDER BY use_tag_id DESC
LIMIT 5;

-- FIND A USER WHO HAVE LIKED EVERY SINGLE PHOTO ON OUR SITE:

SELECT * FROM likes;
SELECT 
    username,
    user_id,
    COUNT(*) as 'Liked_Photos' 
FROM users
INNER JOIN likes ON likes.user_id=users.id
GROUP BY user_id
HAVING Liked_Photos=(SELECT count(*) FROM photos);