-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
(UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword123', '1234567890', 'guest', NOW()),
(UUID(), 'Bob', 'Williams', 'bob@example.com', 'hashedpassword456', '0987654321', 'host', NOW()),
(UUID(), 'Charlie', 'Brown', 'charlie@example.com', 'hashedpassword789', NULL, 'guest', NOW()),
(UUID(), 'Diana', 'Smith', 'diana@example.com', 'hashedpassword000', '1122334455', 'host', NOW());

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
(UUID(), (SELECT user_id FROM User WHERE email='bob@example.com'), 'Cozy Apartment', 'A nice apartment in the city center', 'New York, USA', 120.00, NOW(), NOW()),
(UUID(), (SELECT user_id FROM User WHERE email='diana@example.com'), 'Beach House', 'Beautiful house near the beach', 'Miami, USA', 250.00, NOW(), NOW());

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
(UUID(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE email='alice@example.com'), '2025-09-10', '2025-09-15', 600.00, 'confirmed', NOW()),
(UUID(), (SELECT property_id FROM Property WHERE name='Beach House'), (SELECT user_id FROM User WHERE email='charlie@example.com'), '2025-10-01', '2025-10-05', 1000.00, 'pending', NOW());

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
(UUID(), (SELECT booking_id FROM Booking WHERE status='confirmed'), 600.00, NOW(), 'credit_card');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
(UUID(), (SELECT property_id FROM Property WHERE name='Cozy Apartment'), (SELECT user_id FROM User WHERE email='alice@example.com'), 5, 'Great stay! Highly recommended.', NOW());

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
(UUID(), (SELECT user_id FROM User WHERE email='alice@example.com'), (SELECT user_id FROM User WHERE email='bob@example.com'), 'Hi Bob, I loved your apartment!', NOW()),
(UUID(), (SELECT user_id FROM User WHERE email='bob@example.com'), (SELECT user_id FROM User WHERE email='alice@example.com'), 'Thank you, Alice! You are welcome anytime.', NOW());
