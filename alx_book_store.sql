CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;
-- create meza ya Wallah Bin Wallah
CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);
-- create meza ya vitabu hehe
CREATE TABLE IF NOT EXISTS Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) 
);
-- create customers meza
CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT NOT NULL
);
-- create orders meza
CREATE TABLE IF NOT EXISTS Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
-- create meza ya kenye wameitisha
);
CREATE TABLE IF NOT EXISTS Order_details(
    order_details INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT DOUBLE,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(book_id) REFERENCES Books(book_id),
);