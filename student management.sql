-- Create database
CREATE DATABASE student_management;
USE student_management;

-- Student table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    branch VARCHAR(30)
);

-- Insert values
INSERT INTO students VALUES 
(1, 'Kishore', 21, 'CSE'),
(2, 'Raju', 20, 'ECE'),
(3, 'Bhargav', 22, 'MECH');

-- Display all students
SELECT * FROM students;

-- Students from CSE
SELECT * FROM students WHERE branch = 'CSE';

-- Update branch
UPDATE students SET branch = 'IT' WHERE student_id = 1;

-- Delete a student
DELETE FROM students WHERE student_id = 3;
