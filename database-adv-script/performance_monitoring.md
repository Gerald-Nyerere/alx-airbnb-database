EXPLAIN ANALYZE
SELECT 
    b.id, b.start_date, b.end_date, b.total_price,
    u.name, p.name, pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
LEFT JOIN Payment pay ON b.id = pay.booking_id
WHERE b.start_date BETWEEN '2023-06-01' AND '2023-06-30'
  AND p.location = 'Nairobi';
