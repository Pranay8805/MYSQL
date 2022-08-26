USE testdb;
SHOW TABLES;
CREATE TABLE customers
(
    id INT UNIQUE NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO customers(id,first_name,last_name)
VALUES(1,'samul','George');
SELECT * FROM customers;
SELECT first_name,email FROM customers;
DROP TABLE customers;

DROP TABLE customers;