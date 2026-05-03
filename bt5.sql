USE Cine_Magic;
UPDATE rooms
SET status = 'maintenance'
WHERE id = 1;
select * from rooms;
SELECT * FROM bookings;
ALTER TABLE showtimes 
MODIFY COLUMN show_time TIME NOT NULL;

UPDATE bookings
SET showtime_id = 2
WHERE showtime_id = 1;

DELETE FROM bookings
WHERE phone = 0987654321;
select * from movies;
SET SQL_SAFE_DELETES = 0;
SELECT * FROM showtimes WHERE movie_id = 3;
DELETE FROM showtimes WHERE movie_id = 3;
DELETE FROM bookings 
WHERE showtime_id IN (
    SELECT id FROM showtimes WHERE movie_id = 3
);
-- Sau đó mới xoá phim
DELETE FROM movies WHERE id = 3;