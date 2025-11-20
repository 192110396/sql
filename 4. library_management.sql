CREATE DATABASE library;
USE library;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    published_year INT
);

INSERT INTO books VALUES
(1, 'SQL Basics', 'Robert', 2022),
(2, 'Python 101', 'Mark', 2021),
(3, 'AI Future', 'Sam', 2023);

-- Search book by name
SELECT * FROM books WHERE title LIKE '%SQL%';

-- Books published after 2021
SELECT * FROM books WHERE published_year > 2021;
