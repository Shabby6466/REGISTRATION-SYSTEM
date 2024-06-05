Olympiad Registration System Documentation
Project Title: Olympiad Registration System
Members:
•	Shoaib [F22605029] 
•	Wasiq[F22605042] 
•	Fahad Ali[F22605039]

Date: 6th June, 2024
________________________________________
Table of Contents
1.	Enhanced ERD Diagram
2.	Entity Attributes
3.	SQL Statements
4.	Screenshots of Query Outputs
5.	Normalized Tables
6.	Additional Details
________________________________________
Enhanced ERD Diagram
________________________________________
Entity Attributes
Users
•	user_id (Primary Key)
•	username
•	password
•	email
•	full_name
•	role_id (Foreign Key)
•	created_at
Events
•	event_id (Primary Key)
•	event_name
•	description
•	event_date
•	location
•	created_by (Foreign Key)
Registrations
•	registration_id (Primary Key)
•	user_id (Foreign Key)
•	event_id (Foreign Key)
•	registration_date
Payments
•	payment_id (Primary Key)
•	registration_id (Foreign Key)
•	amount
•	payment_date
•	status_id (Foreign Key)
________________________________________
SQL Statements
Database Creation
 
Table Creation

 
 
 

 

Data Population
 
 
 
 
 

 
 
 
 

Query Tasks  & Screenshots of Query Outputs

1.	Creating, Updating and Altering Tables
 
 
 
2.	Implementing SQL functions for data transformation or calculation.
 
 
3.	Aggregation functions
 
 
 
 
4.	Join functions to retrieve data from multiple tables
 

 
________________________________________
Normalization Explanation
•	1NF: All tables have atomic columns and unique rows.
•	2NF: There are no partial dependencies since all non-key attributes depend on the whole primary key.
•	3NF: There are no transitive dependencies since all attributes are only dependent on the primary key.
Users Table
•	1NF: Each attribute contains atomic values, and each row is unique.
•	2NF: No partial dependencies; all non-key attributes depend on the entire primary key (user_id).
•	3NF: No transitive dependencies; all attributes are only dependent on the primary key (user_id).
Events Table
•	1NF: Atomic values and unique rows.
•	2NF: Fully dependent on the primary key (event_id).
•	3NF: Attributes depend only on the primary key (event_id).
Registrations Table
•	1NF: Atomic values and unique rows.
•	2NF: Fully dependent on the composite primary key (registration_id).
•	3NF: Attributes depend only on the composite primary key (registration_id).
Payments Table
•	1NF: Atomic values and unique rows.
•	2NF: Fully dependent on the primary key (payment_id).
•	3NF: Attributes depend only on the primary key (payment_id).


Additional Details
•  Indexes: Adding indexes to frequently queried columns (e.g., user_id in the Registrations table, event_id in the Payments table) can significantly improve query performance. Indexes speed up data retrieval operations by allowing the database engine to find rows more quickly.
•  Normalization Trade-offs: While normalization reduces redundancy and improves data integrity, it can sometimes lead to complex queries and slower performance due to the need for joins. In such cases, consider denormalization balance performance and data integrity requirements.


