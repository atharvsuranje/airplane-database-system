--
-- Data Insertion for the Airline Database
--
-- Note: For these INSERT queries to work as specified with the desired
-- primary key starting values (e.g., 1, 101), you must first run
-- the following ALTER TABLE statements:
--
-- ALTER TABLE Airports AUTO_INCREMENT = 1;
-- ALTER TABLE Aircrafts AUTO_INCREMENT = 101;
-- ALTER TABLE Flights AUTO_INCREMENT = 201;
-- ALTER TABLE Flight_Crew AUTO_INCREMENT = 301;
-- ALTER TABLE Passengers AUTO_INCREMENT = 401;
-- ALTER TABLE Bookings AUTO_INCREMENT = 501;
-- ALTER TABLE Itineraries AUTO_INCREMENT = 601;
-- ALTER TABLE Fares AUTO_INCREMENT = 701;
-- ALTER TABLE Payments AUTO_INCREMENT = 801;

-- Insert data into Airports table (15 records)
INSERT INTO Airports (name, city, country, code) VALUES
('Indira Gandhi International Airport', 'Delhi', 'India', 'DEL'),
('Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 'BOM'),
('Kempegowda International Airport', 'Bengaluru', 'India', 'BLR'),
('London Heathrow Airport', 'London', 'UK', 'LHR'),
('John F. Kennedy International Airport', 'New York', 'USA', 'JFK'),
('Dubai International Airport', 'Dubai', 'UAE', 'DXB'),
('Changi Airport', 'Singapore', 'Singapore', 'SIN'),
('Tokyo Haneda Airport', 'Tokyo', 'Japan', 'HND'),
('Frankfurt Airport', 'Frankfurt', 'Germany', 'FRA'),
('Sydney Airport', 'Sydney', 'Australia', 'SYD'),
('Chennai International Airport', 'Chennai', 'India', 'MAA'),
('Hyderabad International Airport', 'Hyderabad', 'India', 'HYD'),
('Kolkata International Airport', 'Kolkata', 'India', 'CCU'),
('Goa International Airport', 'Goa', 'India', 'GOI'),
('Pune International Airport', 'Pune', 'India', 'PNQ');

-- Insert data into Aircrafts table (15 records)
INSERT INTO Aircrafts (registration_no, model, seating_cap, manufacture_year, status) VALUES
('VT-A101', 'Airbus A320', 180, '2015-05-10', 'Active'),
('VT-B202', 'Boeing 737', 170, '2018-09-20', 'Active'),
('VT-C303', 'Boeing 787 Dreamliner', 280, '2019-11-15', 'Active'),
('VT-D404', 'Airbus A350', 350, '2020-03-25', 'Active'),
('VT-E505', 'ATR 72', 72, '2016-01-01', 'Maintenance'),
('VT-F606', 'Airbus A380', 550, '2018-08-18', 'Active'),
('VT-G707', 'Embraer E175', 88, '2017-06-30', 'Active'),
('VT-H808', 'Airbus A320neo', 186, '2021-02-14', 'Active'),
('VT-I909', 'Boeing 747', 450, '2015-09-09', 'Retired'),
('VT-J110', 'Bombardier CRJ900', 90, '2019-10-11', 'Active'),
('VT-K111', 'Airbus A330', 250, '2014-04-24', 'Active'),
('VT-L112', 'Boeing 777', 300, '2013-05-15', 'Active'),
('VT-M113', 'Airbus A321', 200, '2017-12-05', 'Active'),
('VT-N114', 'Boeing 767', 220, '2012-07-20', 'Maintenance'),
('VT-O115', 'Boeing 737 MAX', 180, '2022-01-30', 'Active');

-- Insert data into Flights table (25 records)
INSERT INTO Flights (origin_airport_id, destination_airport_id, aircraft_id, dept_time, arrival_time) VALUES
(1, 2, 101, '2024-10-27 08:00:00', '2024-10-27 10:00:00'),
(1, 5, 103, '2024-10-28 10:30:00', '2024-10-28 17:00:00'),
(2, 4, 102, '2024-10-29 11:00:00', '2024-10-29 18:00:00'),
(3, 1, 101, '2024-10-27 11:00:00', '2024-10-27 12:30:00'),
(6, 7, 104, '2024-10-30 01:00:00', '2024-10-30 08:00:00'),
(1, 3, 101, '2024-10-28 15:00:00', '2024-10-28 16:30:00'),
(1, 11, 108, '2024-11-01 07:00:00', '2024-11-01 09:30:00'),
(11, 1, 108, '2024-11-01 10:30:00', '2024-11-01 13:00:00'),
(2, 1, 110, '2024-11-02 14:00:00', '2024-11-02 16:00:00'),
(2, 12, 101, '2024-11-03 10:00:00', '2024-11-03 11:45:00'),
(1, 13, 108, '2024-11-04 12:00:00', '2024-11-04 14:15:00'),
(13, 1, 110, '2024-11-04 15:00:00', '2024-11-04 17:15:00'),
(1, 14, 101, '2024-11-05 09:00:00', '2024-11-05 11:30:00'),
(14, 1, 108, '2024-11-05 12:30:00', '2024-11-05 15:00:00'),
(3, 2, 102, '2024-11-06 18:00:00', '2024-11-06 19:45:00'),
(5, 4, 103, '2024-11-07 10:00:00', '2024-11-07 19:30:00'),
(6, 1, 104, '2024-11-08 04:00:00', '2024-11-08 12:00:00'),
(8, 10, 103, '2024-11-09 13:00:00', '2024-11-09 23:00:00'),
(1, 2, 101, '2024-11-10 16:00:00', '2024-11-10 18:00:00'),
(1, 4, 102, '2024-11-11 10:00:00', '2024-11-11 18:00:00'),
(4, 1, 102, '2024-11-12 19:00:00', '2024-11-13 04:00:00'),
(2, 5, 103, '2024-11-13 10:00:00', '2024-11-13 18:00:00'),
(5, 2, 103, '2024-11-14 19:00:00', '2024-11-15 03:00:00'),
(1, 6, 104, '2024-11-15 14:00:00', '2024-11-15 18:30:00'),
(6, 1, 104, '2024-11-16 20:00:00', '2024-11-17 00:30:00');

-- Insert data into Flight_Crew table (30 records)
INSERT INTO Flight_Crew (name, role, phone_no, email) VALUES
('Captain Rahul Sharma', 'Pilot', 9876543210, 'rahul.s@airline.com'),
('Captain Peter Jones', 'Pilot', 9876543211, 'peter.j@airline.com'),
('Priya Singh', 'Co-Pilot', 9876543212, 'priya.s@airline.com'),
('Amit Kumar', 'Co-Pilot', 9876543213, 'amit.k@airline.com'),
('Sarah Chen', 'Attendant', 9876543214, 'sarah.c@airline.com'),
('Anjali Desai', 'Attendant', 9876543215, 'anjali.d@airline.com'),
('Sandeep Verma', 'Attendant', 9876543216, 'sandeep.v@airline.com'),
('Jessica Lim', 'Attendant', 9876543217, 'jessica.l@airline.com'),
('Arjun Reddy', 'Pilot', 9876543218, 'arjun.r@airline.com'),
('Divya Rao', 'Co-Pilot', 9876543219, 'divya.r@airline.com'),
('Vikram Singh', 'Attendant', 9876543220, 'vikram.s@airline.com'),
('Emily White', 'Attendant', 9876543221, 'emily.w@airline.com'),
('David Wilson', 'Pilot', 9876543222, 'david.w@airline.com'),
('Neha Jain', 'Co-Pilot', 9876543223, 'neha.j@airline.com'),
('Maria Rodriguez', 'Attendant', 9876543224, 'maria.r@airline.com'),
('Rajesh Gupta', 'Pilot', 9876543225, 'rajesh.g@airline.com'),
('Nandini Sharma', 'Co-Pilot', 9876543226, 'nandini.s@airline.com'),
('Akash Patel', 'Attendant', 9876543227, 'akash.p@airline.com'),
('Chloe Davis', 'Attendant', 9876543228, 'chloe.d@airline.com'),
('Mohan Joshi', 'Pilot', 9876543229, 'mohan.j@airline.com'),
('Ishita Bansal', 'Co-Pilot', 9876543230, 'ishita.b@airline.com'),
('Deepak Kumar', 'Attendant', 9876543231, 'deepak.k@airline.com'),
('Preeti Rai', 'Attendant', 9876543232, 'preeti.r@airline.com'),
('Harish Naik', 'Attendant', 9876543233, 'harish.n@airline.com'),
('Captain Liam Johnson', 'Pilot', 9876543234, 'liam.j@airline.com'),
('Jessica Brown', 'Co-Pilot', 9876543235, 'jessica.b@airline.com'),
('Olivia Miller', 'Attendant', 9876543236, 'olivia.m@airline.com'),
('James Taylor', 'Attendant', 9876543237, 'james.t@airline.com'),
('Sophia Wilson', 'Attendant', 9876543238, 'sophia.w@airline.com'),
('Chris Evans', 'Pilot', 9876543239, 'chris.e@airline.com');

-- Insert data into Passengers table (30 records)
INSERT INTO Passengers (name, email, phone_no, dob, gender, seat_preference) VALUES
('Rohan Mehta', 'rohan.m@mail.com', 911234567890, '1990-05-15', 'M', 'Aisle'),
('Ananya Sharma', 'ananya.s@mail.com', 919876543210, '1985-08-20', 'F', 'Window'),
('John Smith', 'john.s@mail.com', 12123456789, '1978-11-30', 'M', 'Middle'),
('Pooja Singh', 'pooja.s@mail.com', 918765432109, '1995-02-10', 'F', 'Window'),
('Michael Brown', 'michael.b@mail.com', 442012345678, '1980-04-22', 'M', 'Aisle'),
('Divya Kumari', 'divya.k@mail.com', 919012345678, '1992-07-18', 'F', 'Window'),
('Akshay Joshi', 'akshay.j@mail.com', 919988776655, '1988-03-05', 'M', 'Aisle'),
('Sarah Jones', 'sarah.j@mail.com', 12555123456, '1991-09-12', 'F', 'Middle'),
('Siddharth Rao', 'siddharth.r@mail.com', 918889990000, '1994-01-25', 'M', 'Window'),
('Neha Verma', 'neha.v@mail.com', 917778889999, '1996-06-08', 'F', 'Aisle'),
('Chris Evans', 'chris.e@mail.com', 447788990011, '1981-12-01', 'M', 'Window'),
('Shruti Das', 'shruti.d@mail.com', 919876123456, '1993-10-21', 'F', 'Middle'),
('Ravi Kumar', 'ravi.k@mail.com', 919000111222, '1989-02-04', 'M', 'Aisle'),
('Elena Petrova', 'elena.p@mail.com', 491761234567, '1975-03-19', 'F', 'Window'),
('Vijay Singh', 'vijay.s@mail.com', 919555666777, '1986-09-02', 'M', 'Window'),
('Aisha Khan', 'aisha.k@mail.com', 919222333444, '1998-07-07', 'F', 'Aisle'),
('Harshit Gupta', 'harshit.g@mail.com', 919444555666, '1997-04-11', 'M', 'Middle'),
('Jessica Wilson', 'jessica.w@mail.com', 12345678901, '1984-08-14', 'F', 'Window'),
('Suresh Patil', 'suresh.p@mail.com', 919777888999, '1990-09-29', 'M', 'Aisle'),
('Lisa Davis', 'lisa.d@mail.com', 12112233445, '1987-05-03', 'F', 'Middle'),
('Priyanka Roy', 'priyanka.r@mail.com', 919887766554, '1995-11-28', 'F', 'Window'),
('Amit Verma', 'amit.v@mail.com', 919911223344, '1991-06-16', 'M', 'Aisle'),
('Sophie Dubois', 'sophie.d@mail.com', 33612345678, '1983-01-27', 'F', 'Window'),
('Ajay Sharma', 'ajay.s@mail.com', 919009988776, '1980-04-05', 'M', 'Middle'),
('Sonia Kapoor', 'sonia.k@mail.com', 919119988775, '1994-09-17', 'F', 'Aisle'),
('Rajiv Patel', 'rajiv.p@mail.com', 919223344556, '1988-12-30', 'M', 'Window'),
('Leah Chen', 'leah.c@mail.com', 861391234567, '1996-03-24', 'F', 'Middle'),
('Vivek Agnihotri', 'vivek.a@mail.com', 919876543210, '1990-05-15', 'M', 'Aisle'),
('Deepa Singh', 'deepa.s@mail.com', 919876543211, '1985-08-20', 'F', 'Window'),
('Arun Reddy', 'arun.r@mail.com', 918765432109, '1995-02-10', 'M', 'Window');

-- Insert data into Fares table (60 records)
INSERT INTO Fares (flight_id, class, price) VALUES
(201, 'Economy', 5500.00), (201, 'Business', 15000.00),
(202, 'Economy', 45000.00), (202, 'Business', 120000.00), (202, 'First', 200000.00),
(203, 'Economy', 38000.00), (203, 'Business', 95000.00), (203, 'First', 180000.00),
(204, 'Economy', 5500.00), (204, 'Business', 14000.00),
(205, 'Economy', 25000.00), (205, 'Business', 60000.00),
(206, 'Economy', 5000.00), (206, 'Business', 13000.00),
(207, 'Economy', 4000.00), (207, 'Business', 12000.00),
(208, 'Economy', 4000.00), (208, 'Business', 12000.00),
(209, 'Economy', 5500.00), (209, 'Business', 15000.00),
(210, 'Economy', 3500.00), (210, 'Business', 10000.00),
(211, 'Economy', 4500.00), (211, 'Business', 13000.00),
(212, 'Economy', 4500.00), (212, 'Business', 13000.00),
(213, 'Economy', 3000.00), (213, 'Business', 9000.00),
(214, 'Economy', 3000.00), (214, 'Business', 9000.00),
(215, 'Economy', 5000.00), (215, 'Business', 14000.00),
(216, 'Economy', 40000.00), (216, 'Business', 98000.00), (216, 'First', 190000.00),
(217, 'Economy', 28000.00), (217, 'Business', 65000.00),
(218, 'Economy', 55000.00), (218, 'Business', 130000.00), (218, 'First', 250000.00),
(219, 'Economy', 5500.00), (219, 'Business', 15000.00),
(220, 'Economy', 38000.00), (220, 'Business', 95000.00), (220, 'First', 180000.00),
(221, 'Economy', 38000.00), (221, 'Business', 95000.00), (221, 'First', 180000.00),
(222, 'Economy', 45000.00), (222, 'Business', 120000.00), (222, 'First', 200000.00),
(223, 'Economy', 45000.00), (223, 'Business', 120000.00), (223, 'First', 200000.00),
(224, 'Economy', 25000.00), (224, 'Business', 60000.00),
(225, 'Economy', 25000.00), (225, 'Business', 60000.00);

-- Insert data into Flight_Crew_Assignment table (60 records)
INSERT INTO Flight_Crew_Assignment (flight_id, crew_id) VALUES
(201, 301), (201, 303), (201, 305), (201, 306),
(202, 302), (202, 304), (202, 307), (202, 308), (202, 311),
(203, 301), (203, 304), (203, 305), (203, 312),
(204, 309), (204, 310), (204, 311),
(205, 313), (205, 314), (205, 315),
(206, 316), (206, 317), (206, 318), (206, 319),
(207, 320), (207, 321), (207, 322), (207, 323),
(208, 320), (208, 321), (208, 322), (208, 323),
(209, 325), (209, 326), (209, 327),
(210, 301), (210, 303), (210, 305),
(211, 320), (211, 321), (211, 322),
(212, 325), (212, 326), (212, 327),
(213, 301), (213, 303), (213, 305),
(214, 320), (214, 321), (214, 322),
(215, 302), (215, 304), (215, 307),
(216, 302), (216, 304), (216, 308),
(217, 313), (217, 314), (217, 315),
(218, 316), (218, 317), (218, 318),
(219, 301), (219, 303), (219, 305),
(220, 302), (220, 304), (220, 307),
(221, 302), (221, 304), (221, 308),
(222, 313), (222, 314), (222, 315),
(223, 313), (223, 314), (223, 316),
(224, 316), (224, 317), (224, 318),
(225, 316), (225, 317), (225, 319);

-- Insert data into Bookings table (40 records)
INSERT INTO Bookings (flight_id, passenger_id, status, seat_no) VALUES
(201, 401, 'Confirmed', '12A'), (201, 402, 'Confirmed', '12B'), (201, 403, 'Confirmed', '13A'),
(202, 404, 'Confirmed', '3C'), (202, 405, 'Confirmed', '3D'), (202, 406, 'Confirmed', '4A'),
(203, 407, 'Confirmed', '2F'), (203, 408, 'Confirmed', '2G'), (203, 409, 'Confirmed', '3A'),
(204, 410, 'Confirmed', '15C'), (204, 411, 'Confirmed', '15D'), (204, 412, 'Confirmed', '16A'),
(205, 413, 'Confirmed', '5E'), (205, 414, 'Confirmed', '5F'), (205, 415, 'Confirmed', '6B'),
(206, 416, 'Confirmed', '10A'), (206, 417, 'Confirmed', '10B'), (206, 418, 'Confirmed', '11C'),
(207, 419, 'Confirmed', '7E'), (207, 420, 'Confirmed', '7F'), (207, 421, 'Confirmed', '8A'),
(208, 422, 'Confirmed', '14A'), (208, 423, 'Confirmed', '14B'), (208, 424, 'Confirmed', '15C'),
(209, 425, 'Confirmed', '10F'), (209, 426, 'Confirmed', '10G'), (209, 427, 'Confirmed', '11A'),
(210, 428, 'Confirmed', '5A'), (210, 429, 'Confirmed', '5B'),
(201, 430, 'Confirmed', '12C'),
(202, 401, 'Pending', '4B'),
(203, 402, 'Cancelled', NULL),
(204, 403, 'Confirmed', '16B'),
(205, 404, 'Confirmed', '6C'),
(206, 405, 'Pending', '11A'),
(207, 406, 'Confirmed', '8B'),
(208, 407, 'Confirmed', '15D'),
(209, 408, 'Cancelled', NULL),
(210, 409, 'Confirmed', '5C');

-- Insert data into Payments table (40 records)
INSERT INTO Payments (booking_id, amount, payment_date, payment_status, payment_mode) VALUES
(501, 5500.00, '2024-10-25 10:00:00', 'Paid', 'UPI'),
(502, 5500.00, '2024-10-25 10:05:00', 'Paid', 'UPI'),
(503, 5500.00, '2024-10-25 10:10:00', 'Paid', 'Credit Card'),
(504, 45000.00, '2024-10-26 11:00:00', 'Paid', 'Net Banking'),
(505, 45000.00, '2024-10-26 11:05:00', 'Paid', 'Credit Card'),
(506, 45000.00, '2024-10-26 11:10:00', 'Paid', 'UPI'),
(507, 38000.00, '2024-10-27 12:00:00', 'Paid', 'Debit Card'),
(508, 38000.00, '2024-10-27 12:05:00', 'Paid', 'UPI'),
(509, 38000.00, '2024-10-27 12:10:00', 'Paid', 'Credit Card'),
(510, 5500.00, '2024-10-25 13:00:00', 'Paid', 'Cash'),
(511, 5500.00, '2024-10-25 13:05:00', 'Paid', 'UPI'),
(512, 5500.00, '2024-10-25 13:10:00', 'Paid', 'Credit Card'),
(513, 25000.00, '2024-10-28 14:00:00', 'Paid', 'Net Banking'),
(514, 25000.00, '2024-10-28 14:05:00', 'Paid', 'Credit Card'),
(515, 25000.00, '2024-10-28 14:10:00', 'Paid', 'UPI'),
(516, 5000.00, '2024-10-29 15:00:00', 'Paid', 'Debit Card'),
(517, 5000.00, '2024-10-29 15:05:00', 'Paid', 'UPI'),
(518, 5000.00, '2024-10-29 15:10:00', 'Paid', 'Credit Card'),
(519, 4000.00, '2024-10-30 16:00:00', 'Paid', 'Cash'),
(520, 4000.00, '2024-10-30 16:05:00', 'Paid', 'UPI'),
(521, 4000.00, '2024-10-30 16:10:00', 'Paid', 'Credit Card'),
(522, 4000.00, '2024-10-31 17:00:00', 'Paid', 'Net Banking'),
(523, 4000.00, '2024-10-31 17:05:00', 'Paid', 'Credit Card'),
(524, 4000.00, '2024-10-31 17:10:00', 'Paid', 'UPI'),
(525, 5500.00, '2024-11-01 18:00:00', 'Paid', 'Debit Card'),
(526, 5500.00, '2024-11-01 18:05:00', 'Paid', 'UPI'),
(527, 5500.00, '2024-11-01 18:10:00', 'Paid', 'Credit Card'),
(528, 3500.00, '2024-11-02 19:00:00', 'Paid', 'Cash'),
(529, 3500.00, '2024-11-02 19:05:00', 'Paid', 'UPI'),
(530, 5500.00, '2024-10-25 10:15:00', 'Paid', 'UPI'),
(531, 45000.00, '2024-10-26 11:15:00', 'Pending', 'Credit Card'),
(532, 38000.00, '2024-10-27 12:15:00', 'Failed', 'Net Banking'),
(533, 5500.00, '2024-10-25 13:15:00', 'Paid', 'Cash'),
(534, 25000.00, '2024-10-28 14:15:00', 'Paid', 'UPI'),
(535, 5000.00, '2024-10-29 15:15:00', 'Pending', 'Debit Card'),
(536, 4000.00, '2024-10-30 16:15:00', 'Paid', 'Credit Card'),
(537, 4000.00, '2024-10-31 17:15:00', 'Paid', 'UPI'),
(538, 5500.00, '2024-11-01 18:15:00', 'Failed', 'Net Banking'),
(539, 3500.00, '2024-11-02 19:15:00', 'Paid', 'UPI');

-- Insert data into Itineraries table (15 records)
INSERT INTO Itineraries (passenger_id, total_flights, cost, status) VALUES
(401, 2, 60000.00, 'Planned'),
(402, 1, 5500.00, 'Planned'),
(403, 3, 75000.00, 'Planned'),
(404, 1, 45000.00, 'Planned'),
(405, 2, 70000.00, 'Planned'),
(406, 1, 45000.00, 'Planned'),
(407, 1, 38000.00, 'Planned'),
(408, 2, 45000.00, 'Planned'),
(409, 1, 38000.00, 'Planned'),
(410, 1, 5500.00, 'Planned'),
(401, 1, 5500.00, 'Planned'),
(402, 1, 38000.00, 'Planned'),
(403, 1, 5500.00, 'Planned'),
(404, 1, 25000.00, 'Planned'),
(405, 1, 5000.00, 'Planned');

-- Insert data into Itinerary_Flights table (20 records)
INSERT INTO Itinerary_Flights (itinerary_id, flight_id, sequence_no, layover_time_min) VALUES
(601, 201, 1, 0), (601, 203, 2, 180),
(602, 201, 1, 0),
(603, 202, 1, 0), (603, 203, 2, 300), (603, 216, 3, 10),
(604, 202, 1, 0),
(605, 202, 1, 0), (605, 205, 2, 150),
(606, 202, 1, 0),
(607, 203, 1, 0),
(608, 204, 1, 0), (608, 215, 2, 120),
(609, 203, 1, 0),
(610, 204, 1, 0),
(611, 201, 1, 0),
(612, 203, 1, 0),
(613, 204, 1, 0),
(614, 205, 1, 0),
(615, 206, 1, 0);