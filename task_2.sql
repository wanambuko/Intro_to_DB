-- Create and use the expected database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Authors table
CREATE TABLE IF NOT EXISTS authors (
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
);

-- Books table
CREATE TABLE IF NOT EXISTS books (
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    price DECIMAL(10,2) DEFAULT 0.00,
    published_date DATE,
    CONSTRAINT fk_books_author FOREIGN KEY (author_id) REFERENCES authors(author_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Customers table
CREATE TABLE IF NOT EXISTS customers (
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    email VARCHAR(255) NOT NULL,
    address TEXT
);

-- Orders table
CREATE TABLE IF NOT EXISTS orders (
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order details table
CREATE TABLE IF NOT EXISTS order_details (
CREATE TABLE order_details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_orderdetails_order FOREIGN KEY (order_id) REFERENCES orders(order_id),
    CONSTRAINT fk_orderdetails_book FOREIGN KEY (book_id) REFERENCES books(book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);