--Query 1: Total bookings per user
SELECT
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM
    users AS u
LEFT JOIN
    bookings AS b
ON
    u.id = b.user_id
GROUP BY
    u.id, u.name
ORDER BY
    total_bookings DESC;

-- Query 2: Rank properties by total bookings
SELECT
    p.id AS property_id,
    p.name AS property_name,
    COUNT(b.id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.id) DESC) AS booking_rank
FROM
    properties AS p
LEFT JOIN
    bookings AS b
ON
    p.id = b.property_id
GROUP BY
    p.id, p.name
ORDER BY
    booking_rank;
