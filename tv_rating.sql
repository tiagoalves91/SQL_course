myCREATE TABLE reviewers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year YEAR(4),
    genre VARCHAR(100)
);


CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2,1),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY(series_id) REFERENCES series(id),
    FOREIGN KEY(reviewer_id) REFERENCES reviewers(id)
    );
    

    //Exercice 1
    SELECT title, rating
    FROM series
    JOIN reviews
        ON series.id = reviews.series_id;
      
    
    //Exercice 2
     SELECT title,
    AVG(rating) AS avg_rating
    FROM series
    JOIN reviews
        ON series.id = reviews.series_id
        GROUP BY series_id
        ORDER BY avg_rating;
          
    // exercice 3 ;   
   
     SELECT first_name, last_name, rating
     FROM reviewers
     JOIN reviews
         ON reviewers.id = reviews.reviewer_id;
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
  
  
  FINAL EXERCICE - 3 TABLES
  
    SELECT title, rating, 
    CONCAT(reviewers.first_name, " ", reviewers.last_name) AS reviewer
    FROM reviews
    JOIN series 
        ON series.id = reviews.series_id   
     JOIN reviewers 
        ON reviewers.id = reviews.reviewer_id
      ORDER BY title;  
        
        
                        
      
     