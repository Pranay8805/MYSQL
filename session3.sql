SELECT * FROM books;
-- LIMITS and OFFSETS
SELECT * FROM books LIMIT 5;
-- IF WE WANT A TABLE FROM 6-10 THEN?
SELECT *  FROM books LIMIT 15 OFFSET 6;

SELECT * FROM books;

DROP TABLE books;

-- SORTING
-- ORDER BY
SELECT * FROM books ORDER BY pages;
SELECT * FROM books ORDER BY pages DESC;

SELECT * FROM books ORDER BY pages, stock_quantity;

SELECT * FROM books ORDER BY pages, stock_quantity DESC;

DESC books;

-- UPDATA QUERY
SELECT * FROM books WHERE title = 'White Noise';

UPDATE books 
SET stock_quantity = 100
WHERE title = 'White Noise';
SELECT * FROM books;

-- Update author_lname to 'Smith' WHERE author_fname is 'Raymond'
UPDATE books
SET author_lname = 'Smith'
WHERE author_fname = 'Raymond'; 
SELECT * FROM books;

-- set it back to the 60

UPDATE books 
SET stock_quantity = 60
WHERE title = 'White Noise';
SELECT * FROM books;



-- lname  to Carver  
UPDATE books
SET author_lname = 'Carver'
WHERE stock_quantity = 23; 

UPDATE books
SET pages = 100;


-- Alter ALTER TABLE name_of_table
ADD name_of_new_column details_of_column
[ FIRST | AFTER name_of_existing_column ];



ALTER TABLE books
ADD availability_ VARCHAR(3) DEFAULT 'Yes'
AFTER released_year;
SELECT * FROM books;

ALTER TABLE books
ADD availability_1 VARCHAR(3) DEFAULT 'Yes'
FIRST;
SELECT * FROM books;

ALTER TABLE books 
CHANGE COLUMN availability_1 availability_2 VARCHAR(3) DEFAULT 'Yes';

SELECT * FROM books;

INSERT INTO books()VALUES();

