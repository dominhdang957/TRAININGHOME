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

INSERT INTO AUTHORS(full_name,birth_year,nationality)
VALUES
('Minh Dang','2007-04-30','VietNam'),
('Ta Ngoc Phuc','2007-04-05','VietNam'),
('Do Xuan Tan','2007-04-20','Japan');

INSERT BOOKS(book_name,category,price,publish_year)
VALUES
('Co Lam Moi Co An','Cuoc Doi',250000,2020),
('Dung Nhin Nguoi Khac Qua Ve Be Ngoai','Cuoc Doi',230000,2025),
('Dung Qua Nhan Tu Voi Ke Thu','Dao Duc',2900000,2026),
('Hay Cu Song Du The Nao', 'Cuoc Doi', 210000, 2023),
('Bi Quyet Cua Nguoi Thanh Cong', 'Ky Nang Song', 275000, 2024),
('Loi Khuyen Tu Ty Phu', 'Kinh Doanh', 320000, 2022),
('Song Co Muc Dich', 'Dao Duc', 245000, 2021),
('Nguoi Ban Duong Cua Ban', 'Cuoc Doi', 195000, 2023);

INSERT INTO CUSTOMERS(full_name,email,phone) 
VALUES
('Xuan Tan','xuantan@gmail.com',0969999999),
('Ngoc Phuc','ngocphuc@gmail.com',0929955999),
('Minh Tuan','minhtuan@gmail.com',0998999999),
('Nhi Dan','dan@gmail.com',0996699999),
('Quoc Anh','quocanh@gmail.com',0959999999);

insert into custommer(full_name, email, phone) values
('Ngoc Phuc', 'ngocphuc@gmail.com', '0912345678');

SELECT *
FROM Books
WHERE category = 'Trinh thám'
AND price < 100000;

SELECT *
FROM Customers
WHERE email LIKE '%@gmail.com';
SELECT *
FROM Books
ORDER BY price DESC
LIMIT 3;
UPDATE Books
SET price = price * 0.9
WHERE pub_year < 2020;

-- Câu lệnh trên bị lỗi vì cột email được khởi tạo trước đó trùng với email bạn đang thêm vì đã có Ràng buộc UNIQUE nên không thể trùng lặp email.


