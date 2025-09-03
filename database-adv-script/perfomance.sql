-- Retrieve all bookings with user, property, and payment details
SELECT 
    b.id AS booking_id, b.check_in_date, b.check_out_date, b.total_price,
    u.id AS user_id, u.name AS user_name, u.email,
    p.id AS property_id, p.name AS property_name, p.location,
    pay.id AS payment_id, pay.amount, pay.payment_date, pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id;
WHERE b.check_in_date >= CURRENT_DATE - INTERVAL '90 days'
  AND p.location = 'Nairobi';
