# Employee-Management-And-Attendance-Tracker

This project is a database system designed to manage employee data and attendance records. It automates record-keeping for employees, their departments, roles, and daily attendance using Oracle SQL*Plus. The system is built to help analyze attendance trends, track working hours, and manage HR-related data efficiently.

## Features

* Database Schema: The project includes four main entities: Employees, Departments, Roles, and Attendance.

* Data Management: The system captures essential details such as employee information, department assignments, work roles, and daily check-in/check-out times. It also tracks attendance status (Present, Absent, Late).

* Automated Attendance: Triggers were implemented to automate attendance entries by marking employees "Absent" if check-in and check-out times are NULL, and setting the status to "Late" for check-ins after 10:00 AM. Triggers also restrict entries on weekends.

## Reporting & Analysis:

- Queries are included for analyzing monthly attendance, identifying frequently late or absent employees, and tracking daily and department-wise late counts.
- Functions were created to calculate work hours based on check-in and check-out times.
- GROUP BY and HAVING queries are used to summarize data and identify weekly and weekday-based trends.

## Data Population:

- Tables were initially populated with over 200 employee records using Mockaroo.
- A PL/SQL block with DBMS_RANDOM was used to generate over 1750 realistic attendance records for a week.

## Technologies Used

- Database: Oracle SQL*Plus 
- Data Generation: Mockaroo, DBMS_RANDOM (used in a PL/SQL block) 

## Project Deliverables
-SQL scripts for creating the tables (employees, roles, departments, attendance).
-Mock data for populating the tables.
-Over 30 queries for generating attendance insights.
-SQL triggers for handling attendance status automatically.
-Functions and aggregated reports for calculating work hours.
