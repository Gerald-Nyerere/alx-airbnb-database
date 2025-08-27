# Airbnb Database Schema

## Overview
This project defines the **Airbnb database schema** using SQL. It follows **Third Normal Form (3NF)** and includes tables for users, properties, bookings, payments, reviews, and messages.

---

## **Entities**
- **User**: Stores user details (guest, host, admin).
- **Property**: Details of properties listed by hosts.
- **Booking**: Records reservations made by users.
- **Payment**: Tracks payments for bookings.
- **Review**: Allows users to leave feedback for properties.
- **Message**: Stores messages between users.

---

## **Schema Details**
- Each table includes **primary keys** (UUID) and relevant attributes.
- **Foreign key constraints** enforce referential integrity.
- **Indexes** are added for performance on frequently searched columns.


