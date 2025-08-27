# Airbnb Database Seed Data

## Overview
This script inserts **sample data** into the Airbnb database to test the schema. It includes users, properties, bookings, payments, reviews, and messages.

---

## **Tables Covered**
- **User**: Hosts and guests.
- **Property**: Listings owned by hosts.
- **Booking**: Reservations made by guests.
- **Payment**: Transactions for bookings.
- **Review**: User feedback on properties.
- **Message**: Communication between users.

---

## **How to Use**
1. Ensure you have created the database and schema from `schema.sql`.
2. Run the seed file:
   ```bash
   mysql -u your_username -p < seed.sql
