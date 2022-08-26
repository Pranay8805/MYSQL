SELECT CHAR_LENGTH('Hello World');
SELECT 
    author_lname,
    CHAR_LENGTH(author_lname) AS length
FROM books;

SELECT 
    
    author_lname,
    CHAR_LENGTH(author_lname) AS length, title
FROM books;
SELECT 
    *,
    author_lname,
    CHAR_LENGTH(author_lname) AS length
FROM books;

SELECT 
    CONCAT (author_lname,
    ' is ', CHAR_LENGTH(author_lname), 
    ' characters long') AS 'last name length' 
FROM books;

SELECT author_fname, author_lname,
	CONCAT(author_fname, ' ', author_lname) AS 'Full Name'
FROM books;

SELECT MAX(released_year)
FROM books;


SELECT DISTINCT(CONCAT(author_fname, " ", author_lname)) AS authors
FROM books;

SELECT * FROM books;
