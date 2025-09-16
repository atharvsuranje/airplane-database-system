-- Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS AirplaneDatabaseSystem;

-- Use the newly created or existing database
USE AirplaneDatabaseSystem;

-- =====================================
-- 1. Airports
-- =====================================
CREATE TABLE Airports (
    airport_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50),
    code CHAR(3) UNIQUE
);

-- =====================================
-- 2. Aircrafts
-- =====================================
CREATE TABLE Aircrafts (
    aircraft_id INT PRIMARY KEY AUTO_INCREMENT,
    registration_no VARCHAR(20) UNIQUE NOT NULL,
    model VARCHAR(50) NOT NULL,
    seating_cap INT NOT NULL,
    manufacture_year DATE,
    status ENUM('Active', 'Maintenance', 'Retired') NOT NULL DEFAULT 'Active'
);

-- =====================================
-- 3. Flights
-- =====================================
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    origin_airport_id INT,
    destination_airport_id INT,
    aircraft_id INT,
    dept_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    FOREIGN KEY (origin_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (destination_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (aircraft_id) REFERENCES Aircrafts(aircraft_id)
);

-- =====================================
-- 4. Flight_Crew
-- =====================================
CREATE TABLE Flight_Crew (
    crew_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    role ENUM('Pilot','Co-Pilot','Attendant') NOT NULL,
    phone_no BIGINT,
    email VARCHAR(30)
);

-- =====================================
-- 5. Flight_Crew_Assignment
-- =====================================
CREATE TABLE Flight_Crew_Assignment (
    flight_id INT,
    crew_id INT,
    PRIMARY KEY(flight_id, crew_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (crew_id) REFERENCES Flight_Crew(crew_id)
);

-- =====================================
-- 6. Passengers
-- =====================================
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(30),
    phone_no BIGINT,
    dob DATE,
    gender ENUM('M','F'),
    seat_preference ENUM('Window','Aisle','Middle') DEFAULT 'Middle'
);

-- =====================================
-- 7. Bookings
-- =====================================
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_id INT,
    passenger_id INT,
    booking_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Confirmed', 'Pending', 'Cancelled') DEFAULT 'Pending',
    seat_no VARCHAR(5),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

-- =====================================
-- 8. Payments
-- =====================================
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_status ENUM('Paid','Pending','Failed') DEFAULT 'Pending',
    payment_mode ENUM('Credit Card','Debit Card','UPI','Net Banking','Cash'),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

-- =====================================
-- 9. Itineraries
-- =====================================
CREATE TABLE Itineraries (
    itinerary_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_id INT,
    total_flights INT,
    cost DECIMAL(10,2),
    status ENUM('Planned','Planning') DEFAULT 'Planning',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id)
);

-- =====================================
-- 10. Itinerary_Flights
-- =====================================
CREATE TABLE Itinerary_Flights (
    flight_id INT,
    itinerary_id INT,
    sequence_no INT,
    layover_time_min INT,
    PRIMARY KEY(itinerary_id, flight_id),
    FOREIGN KEY (itinerary_id) REFERENCES Itineraries(itinerary_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- =====================================
-- 11. Fares
-- =====================================
CREATE TABLE Fares (
    fare_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_id INT,
    class ENUM('Economy','Preminum Economy','Business','First') NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);
