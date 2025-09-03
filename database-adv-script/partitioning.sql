-- Step 1: Create partitioned Booking table
EXPLAIN ANALYZE
CREATE TABLE Booking_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    total_price DECIMAL(10,2)
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions by year
CREATE TABLE Booking_2022 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_2023 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Step 3: Optional indexes on partitions
CREATE INDEX idx_booking_2022_user_id ON Booking_2022(user_id);
CREATE INDEX idx_booking_2023_user_id ON Booking_2023(user_id);
CREATE INDEX idx_booking_2024_user_id ON Booking_2024(user_id);
