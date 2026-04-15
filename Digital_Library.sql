-- Create Database
CREATE DATABASE library_db;
USE library_db;


-- 1. Create Tables

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(50),
    category VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IssuedBooks (
    book_id INT,
    student_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


-- 2. Insert Sample Data

INSERT INTO Books VALUES
(1, 'Java Basics', 'Education'),
(2, 'Python Guide', 'Education'),
(3, 'History of India', 'History'),
(4, 'Science Today', 'Science');

INSERT INTO Students VALUES
(1, 'Prasanth'),
(2, 'Rahul'),
(3, 'Anjali'),
(4, 'Kiran');

INSERT INTO IssuedBooks VALUES
(1, 1, '2024-03-01', NULL),
(2, 2, '2024-03-10', '2024-03-20'),
(3, 3, '2024-02-01', NULL),
(4, 4, '2024-03-15', '2024-03-18');


