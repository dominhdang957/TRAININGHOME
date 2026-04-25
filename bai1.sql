CREATE DATABASE work_worm;
USE work_worm;

CREATE TABLE AUTHORS (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name CHAR(40) NOT NULL,
    birth_year YEAR,
    nationality VARCHAR(100)
);

CREATE TABLE BOOKS (
	id INT PRIMARY KEY AUTO_INCREMENT,
    book_name VARCHAR(200) NOT NULL,
    category VARCHAR(100) ,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES AUTHORS(id),
    price DECIMAL(10,0) NOT NULL DEFAULT 0 CHECK (price >= 0),
    publish_year DATE
);

CREATE TABLE CUSTOMERS (
	id INT PRIMARY KEY AUTO_INCREMENT,
    full_name CHAR(40) NOT NULL,
    email CHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(11) UNIQUE ,
    registration_date DATE DEFAULT (CURRENT_DATE)
);


