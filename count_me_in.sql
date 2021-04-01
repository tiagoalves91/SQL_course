ex1-SELECT "The nº of books is " AS '?', COUNT(*) AS 'book ns' FROM books;

ex2- SELECT released_year, COUNT(*) AS 'NR OF BOOKS' FROM books GROUP BY released_year;

ex3- SELECT "the nr of stock quantity" AS 'question', Sum(stock_quantity) FROM books;

ex4- SELECT author_lname, author_fname, AVG(released_year) FROM books GROUP BY author_lname, author_fname;

ex5- SELECT CONCAT(author_fname, author_lname) as author, MAX(pages) AS Longest FROM books GROUP BY pages DESC LIMIT 1;

SELECT CONCAT(author_fname, author_lname) FROM books WHERE 
pages = (SELECT MAX(pages) FROM books)

rx6- SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;