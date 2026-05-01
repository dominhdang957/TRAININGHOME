CREATE DATABASE Cine_Magic;
USE Cine_Magic;

CREATE TABLE movies (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    duration_minutes TIME ,
    age_restriction INT CHECK (age_restriction IN (0,13,16,18))
);

CREATE TABLE rooms (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    max_seats INT ,
    status VARCHAR(15) CHECK (status IN ('active', 'maintenance'))
);

CREATE TABLE showtimes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    room_id INT NOT NULL,
    show_time INT ,
    ticket_price DECIMAL(10,2) NOT NULL CHECK (ticket_price > 0),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
	FOREIGN KEY (room_id) REFERENCES rooms(id)
    
);

CREATE TABLE bookings (
	id INT PRIMARY KEY AUTO_INCREMENT,
    showtime_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL ,
    phone VARCHAR(11) UNIQUE,
    booking_date DATE NOT NULL,
    FOREIGN KEY (showtime_id) REFERENCES showtimes(id)
);

