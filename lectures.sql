# SELECT DISTINCT author_fname, author_lname FROM books ORDER BY author_lname,author_fname;

# SELECT title FROM books WHERE title LIKE '%the

# SELECT title,stock_quantity FROM books WHERE stock_quantity LIKE '___';

# SELECT title FROM books WHERE title LIKE '%\_%';

# SELECT COUNT(DISTINCT author_Lname, author_fname) AS author FROM books;

# SELECT COUNT(DISTINCT title) AS 'the ex' FROM books WHERE title LIKE '%the%';

# SELECT author_Lname, COUNT(*) FROM books GROUP BY author_Lname;

# SELECT author_fname,author_lname, COUNT(*) FROM books GROUP BY author_Lname, author_fname;

# SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

# SELECT CONCAT('in ', released_year, ' ', COUNT(*), 'books released') FROM books GROUP BY released_year;

# SELECT MIN(released_year) FROM  books;

# SELECT title,pages FROM books WHERE pages = (SELECT MIN(pages) FROM books);

# SELECT title,pages FROM books ORDER BY pages LIMIT 1;

# SELECT author_fname,author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;

# SELECT 
# CONCAT(author_fname, " ", author_lname) AS author, MAX(pages) AS ' longest book' FROM books GROUP BY author_lname,author_fname;

# SELECT author_fname,author_lname, Sum(pages) FROM books GROUP BY author_fname;

# SELECT author_fname,author_lname, AVG(released_year) FROM books GROUP BY author_fname;

# SELECT title AS author, released_year, AVG(stock_quantity) FROM books GROUP BY released_year;


