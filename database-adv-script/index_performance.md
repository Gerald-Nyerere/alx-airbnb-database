EXPLAIN ANALYZE
SELECT
    u.name,
    b.start_date
FROM
    users u
JOIN
    bookings b ON u.id = b.user_id
WHERE
    b.start_date > '2025-01-01'
ORDER BY
    b.start_date;
