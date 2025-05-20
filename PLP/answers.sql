-- 1. Create a new database called salesDB
CREATE DATABASE salesDB;

-- 2. Drop (delete) the database called demo
DROP DATABASE demo;

-- Question 1
-- Create the student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);

-- Question 2
-- Insert 3 records into the student table
INSERT INTO student (id, fullName, age) VALUES
(1, 'Alice Mwangi', 19),
(2, 'Brian Otieno', 18),
(3, 'Clara Wambui', 20);

-- Question 3
-- Update the age of the student with ID 2 to 20
UPDATE student
SET age = 20
WHERE id = 2;
