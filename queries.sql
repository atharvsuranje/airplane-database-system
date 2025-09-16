-- 1. List all flights with their aircraft model and departure/arrival times
SELECT 
    f.flight_id,
    f.dept_time,
    f.arrival_time,
    a.model AS aircraft_model
FROM Flights f
JOIN Aircrafts a ON f.aircraft_id = a.aircraft_id;

-- 2. Find all flights departing from 'Indira Gandhi International Airport'
SELECT 
    f.flight_id,
    f.dept_time,
    f.arrival_time
FROM Flights f
JOIN Airports ap ON f.origin_airport_id = ap.airport_id
WHERE ap.name = 'Indira Gandhi International Airport';

-- 3. Show all passengers and their seat numbers for a specific flight (id = 1)
SELECT 
    p.name AS passenger_name,
    b.seat_no
FROM Passengers p
JOIN Bookings b ON p.passenger_id = b.passenger_id
WHERE b.flight_id = 201;

-- 4. Count total bookings per flight
SELECT 
    f.flight_id,
    COUNT(b.booking_id) AS total_bookings
FROM Flights f
LEFT JOIN Bookings b ON f.flight_id = b.flight_id
GROUP BY f.flight_id;

-- 5. List all crew members assigned to flight_id = 2
SELECT 
    fc.name,
    fc.role
FROM Flight_Crew fc
JOIN Flight_Crew_Assignment fca ON fc.crew_id = fca.crew_id
WHERE fca.flight_id = 202;

-- 6. Show all fare classes and prices for each flight
SELECT 
    f.flight_id,
    fr.class,
    fr.price
FROM Flights f
JOIN Fares fr ON f.flight_id = fr.flight_id;

-- 7. Find passengers who have made more than 1 booking
SELECT 
    p.name,
    COUNT(b.booking_id) AS total_bookings
FROM Passengers p
JOIN Bookings b ON p.passenger_id = b.passenger_id
GROUP BY p.passenger_id, p.name
HAVING COUNT(b.booking_id) > 1;

-- 8. Show itineraries with more than one flight
SELECT 
    i.itinerary_id,
    p.name AS passenger_name,
    i.total_flights
FROM Itineraries i
JOIN Passengers p ON i.passenger_id = p.passenger_id
WHERE i.total_flights > 1;

-- 9. List failed payments with passenger name and flight_id
SELECT 
    pa.name,
    b.flight_id,
    p.amount,
    p.payment_status
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id
JOIN Passengers pa ON b.passenger_id = pa.passenger_id
WHERE p.payment_status = 'Failed';

-- 10. Find average fare price for each flight
SELECT 
    f.flight_id,
    AVG(fr.price) AS avg_fare
FROM Flights f
JOIN Fares fr ON f.flight_id = fr.flight_id
GROUP BY f.flight_id;

-- 11. Show airports with number of departing flights
SELECT 
    a.name AS airport_name,
    COUNT(f.flight_id) AS departing_flights
FROM Airports a
JOIN Flights f ON a.airport_id = f.origin_airport_id
GROUP BY a.airport_id, a.name;

-- 12. Passengers with pending bookings
SELECT 
    p.name,
    p.email
FROM Passengers p
JOIN Bookings b ON p.passenger_id = b.passenger_id
WHERE b.status = 'Pending';

-- 13. Total revenue per payment mode (only Paid)
SELECT 
    payment_mode,
    SUM(amount) AS total_revenue
FROM Payments
WHERE payment_status = 'Paid'
GROUP BY payment_mode;

-- 14. Flights with no bookings
SELECT 
    f.flight_id,
    f.dept_time,
    f.arrival_time
FROM Flights f
LEFT JOIN Bookings b ON f.flight_id = b.flight_id
WHERE b.booking_id IS NULL;

-- 15. Top 3 most expensive flights based on max fare
SELECT 
    f.flight_id,
    MAX(fr.price) AS max_fare
FROM Flights f
JOIN Fares fr ON f.flight_id = fr.flight_id
GROUP BY f.flight_id
ORDER BY max_fare DESC
LIMIT 3;
