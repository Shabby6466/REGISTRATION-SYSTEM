# Olympiad Registration System

## Overview

The Olympiad Registration System is a database management project designed to handle the registration process for various Olympiad events. This project includes the design and implementation of a normalized database, SQL scripts for creating and populating tables, and queries for data manipulation and retrieval.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [ERD Diagram](#erd-diagram)
- [Database Schema](#database-schema)
- [SQL Scripts](#sql-scripts)
- [Screenshots](#screenshots)
- [Normalization](#normalization)
- [Additional Details](#additional-details)
- [Installation](#installation)
  
## Features

- User registration and role management
- Event creation and management
- User event registration
- Payment processing and status tracking
- Data integrity and referential integrity enforced through foreign keys
- Aggregation functions for data analysis

## ERD Diagram

![Enhanced ERD Diagram](path/to/your/enhanced-erd-diagram.png)

## Database Schema

### UserRoles Table
- `role_id` (Primary Key)
- `role_name`

### Users Table
- `user_id` (Primary Key)
- `username`
- `password`
- `email`
- `full_name`
- `role_id` (Foreign Key)
- `created_at`

### Events Table
- `event_id` (Primary Key)
- `event_name`
- `description`
- `event_date`
- `location`
- `created_by` (Foreign Key)

### Registrations Table
- `registration_id` (Primary Key)
- `user_id` (Foreign Key)
- `event_id` (Foreign Key)
- `registration_date`

### PaymentStatuses Table
- `status_id` (Primary Key)
- `status_name`

### Payments Table
- `payment_id` (Primary Key)
- `registration_id` (Foreign Key)
- `amount`
- `payment_date`
- `status_id` (Foreign Key)


## Normalization

The database schema is normalized to at least Third Normal Form (3NF), ensuring minimal redundancy and maintaining data integrity.

### First Normal Form (1NF)
- Ensures that all tables contain only atomic values and each record is unique.

### Second Normal Form (2NF)
- Ensures that all non-key attributes are fully dependent on the primary key.

### Third Normal Form (3NF)
- Ensures that all attributes are only dependent on the primary key, eliminating transitive dependencies.

## Additional Details

### Design Choices
- **UserRoles** table for role-based access control.
- **PaymentStatuses** table to manage and track payment statuses.

### Security Considerations
- Passwords should be hashed using a strong hashing algorithm before being stored in the database.
- Use parameterized queries in the frontend application to protect against SQL injection attacks.

### Performance Optimization
- Indexes can be added to frequently queried columns to improve performance.
- Consider denormalization or caching strategies for complex queries and large datasets.

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/olympiad-registration-system.git
    ```

2. Open the project in SQL Server Management Studio (SSMS).

3. Run the SQL scripts provided in the `sql` folder to create and populate the database.


Shoaib Fayyaz the KING
