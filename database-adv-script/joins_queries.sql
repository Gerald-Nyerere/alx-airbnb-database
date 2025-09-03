SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email
FROM
    bookings AS b
INNER JOIN
    users AS u
ON
    b.user_id = u.id
ORDER BY
    b.start_date;


SELECT
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM
    properties AS p
LEFT JOIN
    reviews AS r
ON
    p.id = r.property_id
ORDER BY
    p.id, r.id;


(SELECT
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.end_date
FROM
    users AS u
LEFT JOIN
    bookings AS b
ON
    u.id = b.user_id)
UNION
(SELECT
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date,
    b.end_date
FROM
    users AS u
RIGHT JOIN
    bookings AS b
ON
    u.id = b.user_id)
ORDER BY
    user_id, booking_id;
