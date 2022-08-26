USE book_shop;
SELECT * FROM books;
SELECT Avg(stock_quantity)
FROM books;
SELECT Max(stock_quantity)
FROM books;
SELECT Max(stock_quantity) AS Max_value, Avg(stock_quantity) AS Avg_quantity, Min(stock_quantity) AS Min_value
FROM books;

SELECT DISTINCT(author_fname) 
FROM books;

SELECT DISTINCT(author_fname), author_lname 
FROM books;





-- Group by



SELECT * FROM books;

SELECT released_year, Avg(stock_quantity)FROM books
GROUP by released_year ;


SELECT author_lname, author_fname, COUNT(*) as num_of_books
FROM books
GROUP by author_lname, author_fname;

SELECT CONCAT(author_fname, " ", author_lname) AS author_lname, COUNT(*) as num_of_books
FROM books
GROUP by author_lname, author_fname
ORDER by  num_of_books;
-- DESC

SELECT 
    author_fname,
    author_lname,
    CONCAT(author_fname, ' ', author_lname) AS author_name,
    CONCAT(CONCAT(author_fname, ' ', author_lname),
    ' released ',
            ', ',
            COUNT(*),
            ' book(s) ') AS num_of_books
FROM
    books
GROUP BY author_lname , author_fname
ORDER BY num_of_books DESC;


