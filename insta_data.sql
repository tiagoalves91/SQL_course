CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);
    
    
CREATE TABLE photos (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    user_id INTEGER NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id)
);

CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)

);

CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY (follower_id, followee_id)
);

CREATE TABLE tags (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(155) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    PRIMARY KEY (photo_id, tag_id)
);


    
        
    SELECT  first_name, last_name,
            COUNT(reviews.id) AS 'COUNT',
            IFNULL(MIN(rating), 0.0) AS 'MIN',
            IFNULL(MAX(rating), 0.0) AS 'MAX',
            IFNULL(ROUND(AVG(rating),2), 0.00000) AS AVG,
            IF (COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS
         
        FROM reviewers
    LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
     GROUP BY reviewer_id
     ORDER BY MAX DESC;
     
        CASE 
            WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
            WHEN COUNT(rating) >= 10 THEN 'POWER USER'
            ELSE 'INACTIVE'
        END AS STATUS
            # IF(photo_id = NULL, 'INACTIVE', 'ACTIVE') AS STATUS
            
 IF(photos.user_id = L, 'INACTIVE', 'ACTIVE') AS STATUS

SELECT username
FROM users
LEFT JOIN photos
   ON users.id = photos.user_id
WHERE photos.id IS NULL;



SELECT username, photos.image_url, COUNT(likes.photo_id) AS COUNT
    FROM photos
    JOIN likes    
        ON photos.id = likes.photo_id
    JOIN users
        ON users.id = likes.user_id
    GROUP BY photo_id
    ORDER BY COUNT DESC
    LIMIT 1;
    
  
  // CALCULATE TOTAL NUMBER OF PHOTOS
  
  SELECT 
  (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS averagePOST;
  
SELECT tags.tag_name, 
        COUNT(*) AS total 
FROM photo_tags
JOIN tags
     ON photo_tags.tag_id = tags.id
     GROUP BY tags.id
     ORDER BY total DESC
     LIMIT 5;
   
SELECT username,
COUNT(*) AS num_likes
   FROM users
    JOIN likes
        ON users.id = likes.user_id;
   GROUP BY users.id
   HAVING num_likes = (SELECT COUNT(photos.id) from photos);
 
 

      
     
     




    



