-- =========================================
-- Database: alx_book_store
-- Online Bookstore Database
-- =========================================

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- 2. Use the database
USE alx_book_store;

-- =========================================
-- 3. Create Authors table
-- =========================================
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- =========================================
-- 4. Create Books table
-- =========================================
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- =========================================
-- 5. Create Customers table
-- =========================================
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

-- =========================================
-- 6. Create Orders table
-- =========================================
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- =========================================
-- 7. Create Order_Details table
-- =========================================
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- =========================================
-- 8. Sample Inserts for testing
-- =========================================

-- Insert Authors
INSERT INTO Authors (author_name)
VALUES 
('J.K. Rowling'), 
('George R.R. Martin'), 
('Agatha Christie');

-- Insert Books
INSERT INTO Books (title, author_id, price, publication_date)
VALUES 
('Harry Potter and the Sorcerer''s Stone', 1, 12.99, '1997-06-26'),
('A Game of Thrones', 2, 15.50, '1996-08-06'),
('Murder on the Orient Express', 3, 10.75, '1934-01-01');

-- Insert Customers
INSERT INTO Customers (customer_name, email, address)
VALUES 
('Alice Johnson', 'alice@example.com', '123 Main St'),
('Bob Smith', 'bob@example.com', '456 Oak Ave');

-- Insert Orders
INSERT INTO Orders (customer_id, order_date)
VALUES 
(1, '2025-12-01'),
(2, '2025-12-02');

-- Insert Order Details
INSERT INTO Order_Details (order_id, book_id, quantity)
VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 1);
