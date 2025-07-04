# SQL Internship - Task 8: Stored Procedures and Functions (MySQL)

# About the Task
In this task, I focused on creating **stored procedures** and **user-defined functions** in SQL.

The goal was to:
- Modularize and reuse SQL logic
- Use input parameters for dynamic behavior
- Apply conditional logic inside SQL blocks

This task helped me build foundational skills in writing procedural SQL using MySQL.


#Database Used
I worked with the **RentalDB** database, which includes the following tables:
- `Owners` — Property owner details
- `Properties` — Rental property information
- `Locations` — City, state, and zip code
- `Renters` — Renter contact details
- `Bookings` — Records of property bookings
- `Payments` — Payment information for bookings

The schema was ideal for building practical procedures and functions.


# What I Did

I implemented both a stored procedure and a function:

#  Stored Procedure: `GetPropertiesByCity`
- **Input:** City name (e.g., `'Bengaluru'`)
- **Logic:** Returns all properties in the given city with owner name and rent
- **Techniques Used:** JOINs, SELECT, parameters

#  User-Defined Function: `GetTotalRentByOwner`
- **Input:** Owner ID (e.g., `1`)
- **Logic:** Returns the total rent from properties owned by that owner (based on bookings)
- **Techniques Used:** Scalar return, aggregate function (`SUM`), parameter input

These procedures made querying the database easier and more efficient for recurring logic.


#  Tools Used
- **MySQL Workbench**
