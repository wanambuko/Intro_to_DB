-- 1️⃣ Insert Authors
INSERT INTO AUTHORS (author_name) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('Agatha Christie');

-- 2️⃣ Insert Books
INSERT INTO BOOKS (title, author_id, price, publication_date) VALUES
('Harry Potter and the Philosopher''s Stone', 1, 12.99, '1997-06-26'),
('A Game of Thrones', 2, 15.50, '1996-08-06'),
('Murder on the Orient Express', 3, 10.00, '1934-01-01');

-- 3️⃣ Insert Customers
INSERT INTO CUSTOMERS (customer_name, email) VALUES
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com');

-- 4️⃣ Insert Orders
INSERT INTO ORDERS (customer_id, order_date) VALUES
(1, '2026-01-01'),
(2, '2026-01-02');

-- 5️⃣ Insert Order Details
INSERT INTO ORDER_DETAILS (order_id, book_id, quantity) VALUES
(1, 1, 2),  -- 2 copies of Harry Potter for order 1
(1, 3, 1),  -- 1 copy of Agatha Christie for order 1
(2, 2, 1);  -- 1 copy of Gam
