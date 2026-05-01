
INSERT INTO movies (title, duration_minutes, age_restriction) VALUES
('Mưa Đỏ', 118, 13),
('How To Train Your Dragon', 110, 0),
('F1: The Movie', 130, 13),
('28 Years Later', 115, 18);   


INSERT INTO rooms (name, max_seats, status) VALUES
('Phòng 1 - Standard', 120, 'active'),
('Phòng 2 - Premium', 80,  'active'),
('Phòng 3 - VIP',     50,  'maintenance'); 


INSERT INTO showtimes (movie_id, room_id, show_time, ticket_price) VALUES
(1, 1, '09:00:00', 85000),   
(2, 2, '11:30:00', 120000), 
(3, 1, '14:00:00', 95000), 
(4, 2, '16:30:00', 130000), 
(1, 2, '19:00:00', 120000);  


INSERT INTO bookings (showtime_id, customer_name, phone, booking_date) VALUES
(1, 'Nguyễn Văn An',    '0901234567', '2026-05-01'),
(1, 'Trần Thị Bình',   '0912345678', '2026-05-01'),
(2, 'Lê Minh Cường',   '0923456789', '2026-05-02'),
(2, 'Phạm Thị Dung',   '0934567890', '2026-05-02'),
(3, 'Hoàng Văn Em',    '0945678901', '2026-05-03'),
(3, 'Vũ Thị Phương',   '0956789012', '2026-05-03'),
(4, 'Đặng Minh Quân',  '0967890123', '2026-05-04'),
(4, 'Bùi Thị Hương',   '0978901234', '2026-05-04'),
(5, 'Ngô Văn Khải',    '0989012345', '2026-05-05'),
(5, 'Đinh Thị Lan',    '0990123456', '2026-05-05');