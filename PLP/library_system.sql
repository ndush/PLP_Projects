-- Table for Authors
CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE
);

-- Table for Books
CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  published_year YEAR,
  isbn VARCHAR(20) UNIQUE
);

-- Junction table for many-to-many relationship between books and authors
CREATE TABLE book_authors (
  book_id INT NOT NULL,
  author_id INT NOT NULL,
  PRIMARY KEY (book_id, author_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Table for Members
CREATE TABLE members (
  member_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  phone VARCHAR(15)
);

-- Table for Loans
CREATE TABLE loans (
  loan_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  member_id INT NOT NULL,
  loan_date DATE NOT NULL,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (member_id) REFERENCES members(member_id)
);
