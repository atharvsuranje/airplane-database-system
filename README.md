# FlightManagement Database ✈️

![SQL](https://img.shields.io/badge/Language-SQL-blue) ![Database](https://img.shields.io/badge/DB-MySQL-orange) ![License](https://img.shields.io/badge/License-MIT-green)

A comprehensive **Airline Flight Management System** database for managing flights, aircraft, airports, crew, passengers, bookings, payments, itineraries, and fares.

---

## 📂 Repository Contents

| File | Description |
|------|-------------|
| `ER_Diagram.pdf` | PDF of the ER Diagram |
| `Airplane_Database.drawio` | Source file for Draw.io ER Diagram |
| `schema.sql` | SQL script to create database and tables |
| `sample_data.sql` | SQL script to populate tables with sample data |
| `queries.sql` | Sample queries for testing and exploration |

---

## 🗂 Database Structure

### Tables Overview

1. **Airports** – Airport details (`airport_id`, `name`, `city`, `country`, `code`).  
2. **Aircrafts** – Aircraft info (`aircraft_id`, `registration_no`, `model`, `seating_cap`, `manufacture_year`, `status`).  
3. **Flights** – Flight schedules (`flight_id`, `origin_airport_id`, `destination_airport_id`, `aircraft_id`, `dept_time`, `arrival_time`).  
4. **Flight_Crew** – Crew members (`crew_id`, `name`, `role`, `phone_no`, `email`).  
5. **Flight_Crew_Assignment** – Crew assignments (`flight_id`, `crew_id`).  
6. **Passengers** – Passenger info (`passenger_id`, `name`, `email`, `phone_no`, `dob`, `gender`, `seat_preference`).  
7. **Bookings** – Flight bookings (`booking_id`, `flight_id`, `passenger_id`, `booking_time`, `status`, `seat_no`).  
8. **Payments** – Payment records (`payment_id`, `booking_id`, `amount`, `payment_date`, `payment_status`, `payment_mode`).  
9. **Itineraries** – Passenger itineraries (`itinerary_id`, `passenger_id`, `total_flights`, `cost`, `status`, `created_at`).  
10. **Itinerary_Flights** – Flights in itineraries (`itinerary_id`, `flight_id`, `sequence_no`, `layover_time_min`).  
11. **Fares** – Flight pricing (`fare_id`, `flight_id`, `class`, `price`).

---

## ⚡ Features

- Manage airports, aircraft, and flight schedules  
- Assign crew members to flights  
- Handle passenger bookings and seat preferences  
- Track payments and booking statuses  
- Support multi-flight itineraries  
- Fare management by class (Economy, Premium Economy, Business, First)  

---

## 🚀 Getting Started

1. Clone the repository:

```bash
git clone https://github.com/atharvsuranje/airplane-database-system/
```
2. Create the database and tables:
```bash
SOURCE schema.sql;
```
3. Insert sample data:
```bash
SOURCE sample_data.sql;
```
4. Explore sample queries:
```bash
SOURCE queries.sql;
```
