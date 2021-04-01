ex 1- SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));

ex 2- substituir os espaços por - "I-like-cats";

ex 3- SELECT REPLACE(title,' ', '->') AS 'title' FROM books;

ex 4- SELECT author_lname as forwards, REVERSE(author_lname) as backwards FROM  books;

ex 5 - SELECT UPPER( CONCAT(author_fname,' ', author_lname)) AS 'full name in caps' FROM books;

ex 6 - SELECT CONCAT(title, ' was release in ', released_year) AS blurb FROM books;

ex 7 - SELECT title AS 'title', CHAR_LENGTH(title) AS 'count' FROM books;

ex 8 - SELECT CONCAT(SUBSTRING(title,1,10),'...') AS 'short title',
              CONCAT(author_lname,",", author_fname) AS 'author',
              CONCAT(stock_quantity," in stock") AS 'quantity'
        FROM books;
