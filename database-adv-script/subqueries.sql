SELECT
    p.id AS property_id,
    p.name AS property_name
FROM
    properties AS p
WHERE
    (
        SELECT AVG(r.rating)
        FROM reviews AS r
        WHERE r.property_id = p.id
    ) > 4.0;


SELECT
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email
FROM
    users AS u
WHERE
    (
        SELECT COUNT(*)
        FROM bookings AS b
        WHERE b.user_id = u.id
    ) > 3;
