# ex1 - SELECT title FROM books WHERE title LIKE '%Stories%';

# ex 2 - SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

# ex- 3 -SELECT CONCAT(title, " - ", released_year) as summary FROM books ORDER BY released_year DESC LIMIT 3;


# ex 4 - SELECT title,author_lname FROM books WHERE author_lname LIKE '% %';

# ex 5 SELECT title,released_year,stock_quantity FROM books ORDER BY stock_quantity, title LIMIT 3;

# ex 6 - SELECT title, author_lname FROM books ORDER BY author_lname, title;

# SELECT DISTINCT UPPER(CONCAT('my favorite author is ',author_fname," ", author_lname)) AS yell
# FROM books ORDER BY author_lname;