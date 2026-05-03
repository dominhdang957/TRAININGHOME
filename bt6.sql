SELECT *
FROM movies
WHERE duration_minutes BETWEEN 90 AND 120;

SELECT *
FROM bookings
WHERE showtime_id = 2
ORDER BY booking_date DESC;

SELECT *
FROM movies
WHERE age_restriction = 18 OR duration_minutes > 150;

SELECT *
FROM showtimes
WHERE ticket_price > 100000
  AND MONTH(show_time) = MONTH(CURDATE())
  AND YEAR(show_time)  = YEAR(CURDATE());