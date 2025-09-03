## Query Performance Analysis

### Query: Join users and bookings filtered by start_date

```sql
EXPLAIN ANALYZE
SELECT
    u.name,
    b.start_date
FROM
    users u
JOIN
    bookings b ON u.id = b.user_id
WHERE
    b.start_date > '2025-09-03'
ORDER BY
    b.start_date;
