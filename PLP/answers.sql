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


-- Question 1 🗑️
-- Drop the index named 'IdxPhone' from the 'customers' table
DROP INDEX IdxPhone ON customers;

-- Question 2 👤
-- Create a user named 'bob' with a secure password, limited to localhost access
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 3 🔑
-- Grant INSERT privilege to user 'bob' on the 'salesDB' database
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Question 4 🔐
-- Change the password for user 'bob' to a new secure value
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
