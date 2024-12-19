-- Active: 1734585096532@@127.0.0.1@3306
show DATABASES;
use ig_clone;
SELECT DATABASE();
SELECT * from users;
SHOW TABLES;
DESC follows;
DELIMITER $$
    CREATE TRIGGER cannot_follow_self
    BEFORE INSERT ON follows FOR EACH ROW
    BEGIN
        IF NEW.follower_id = NEW.followee_id
        THEN 
            SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT='CANNOT FOLLOW YOURSELF';
        END IF;
    END;
$$
DELIMITER ;

SELECT * FROM follows;

INSERT INTO follows(follower_id,followee_id)
VALUES
(7,3);

CREATE TABLE unfollow_data(
    follower_id INT,
    followee_id INT,
    created_at TIMESTAMP DEFAULT NOW(),
    Foreign Key (follower_id) REFERENCES follows(follower_id),
    Foreign Key (followee_id) REFERENCES follows(followee_id)
);

SELECT * FROM unfollow_data;

DELIMITER $$
CREATE Trigger in_unfollow
    AFTER DELETE ON follows FOR EACH ROW
    BEGIN 
        INSERT INTO unfollow_data
        SET follower_id=OLD.follower_id,
            followee_id=OLD.followee_id;
    END $$
DELIMITER ;

SELECT * FROM follows LIMIT 5;
DELETE FROM follows WHERE follower_id=2 AND followee_id = 6;
SELECT * FROM unfollow_data;
SHOW TRIGGERS;