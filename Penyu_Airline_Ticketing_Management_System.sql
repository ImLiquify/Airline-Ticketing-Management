
CREATE TABLE Passenger (
PassportID NVARCHAR(50) PRIMARY KEY,
PassengerName NVARCHAR(50),
ContactInfo NVARCHAR(50),
Age INT,
TravelerType NVARCHAR(50),
FrequentFlyerProgram NVARCHAR(50),
);

INSERT INTO Passenger 
(PassportID, PassengerName, ContactInfo, Age, TravelerType, FrequentFlyerProgram) 
Values
('P001', 'Alice Smith', 'alice@example.com', 30, 'Frequent', 'Yes'),
('P002', 'Bob Johnson', 'bob@example.com', 45, 'Occasional', 'No'),
('P003', 'Charlie Brown', 'charlie@example.com', 22, 'Frequent', 'Yes'),
('P004', 'Diana Lee', 'diana@example.com', 55, 'Occasional', 'No'),
('P005', 'Ethan Davis', 'ethan@example.com', 28, 'Frequent', 'Yes'),
('P006', 'Fiona Wilson', 'fiona@example.com', 38, 'Occasional', 'No'),
('P007', 'George Moore', 'george@example.com', 60, 'Frequent', 'Yes'),
('P008', 'Hannah Taylor', 'hannah@example.com', 25, 'Occasional', 'No'),
('P009', 'Ian Anderson', 'ian@example.com', 42, 'Frequent', 'Yes'),
('P010', 'Julia Thomas', 'julia@example.com', 33, 'Occasional', 'No'),
('P011', 'Kevin Jackson', 'kevin@example.com', 50, 'Frequent', 'Yes'),
('P012', 'Laura White', 'laura@example.com', 29, 'Occasional', 'No'),
('P013', 'Mike Harris', 'mike@example.com', 36, 'Frequent', 'Yes'),
('P014', 'Nancy Martin', 'nancy@example.com', 48, 'Occasional', 'No'),
('P015', 'Oliver Thompson', 'oliver@example.com', 27, 'Frequent', 'Yes'),
('P016', 'Patricia Garcia', 'patricia@example.com', 39, 'Occasional', 'No'),
('P017', 'Quentin Martinez', 'quentin@example.com', 52, 'Frequent', 'Yes'),
('P018', 'Rose Robinson', 'rose@example.com', 26, 'Occasional', 'No'),
('P019', 'Samuel Clark', 'samuel@example.com', 43, 'Frequent', 'Yes'),
('P020', 'Tina Rodriguez', 'tina@example.com', 31, 'Occasional', 'No'),
('P021', 'Ulysses Lewis', 'ulysses@example.com', 58, 'Frequent', 'Yes'),
('P022', 'Violet Lee', 'violet@example.com', 24, 'Occasional', 'No'),
('P023', 'Walter Walker', 'walter@example.com', 46, 'Frequent', 'Yes'),
('P024', 'Xena Young', 'xena@example.com', 34, 'Occasional', 'No'),
('P025', 'Yvonne Allen', 'yvonne@example.com', 23, 'Frequent', 'Yes');

CREATE TABLE Booking (
PNR NVARCHAR(50) PRIMARY KEY,
PassportID NVARCHAR(50) FOREIGN KEY REFERENCES Passenger(PassportID),
Infant_Name NVARCHAR(50),
ChildName NVARCHAR(50),
);

INSERT INTO Booking 
(PNR, PassportID, Infant_Name, ChildName) 
values
('B001', 'P001', NULL, NULL),
('B002', 'P002', NULL, 'Child1'),
('B003', 'P003', NULL, NULL),
('B004', 'P004', NULL, NULL),
('B005', 'P005', NULL, 'Child2'),
('B006', 'P006', NULL, NULL),
('B007', 'P007', 'Infant1', NULL),
('B008', 'P008', NULL, NULL),
('B009', 'P009', NULL, 'Child3'),
('B010', 'P010', NULL, NULL),
('B011', 'P011', NULL, NULL),
('B012', 'P012', NULL, 'Child4'),
('B013', 'P013', NULL, NULL),
('B014', 'P014', NULL, NULL),
('B015', 'P015', NULL, 'Child5'),
('B016', 'P016', NULL, NULL),
('B017', 'P017', 'Infant2', NULL),
('B018', 'P018', NULL, NULL),
('B019', 'P019', NULL, 'Child6'),
('B020', 'P020', NULL, NULL),
('B021', 'P021', NULL, NULL),
('B022', 'P022', NULL, 'Child7'),
('B023', 'P023', NULL, NULL),
('B024', 'P024', NULL, NULL),
('B025', 'P025', NULL, 'Child8');

CREATE TABLE Airport (
AirportID NVARCHAR(50) PRIMARY KEY,
AirportName NVARCHAR(50),
AirportLocation NVARCHAR(50),
);

INSERT INTO Airport 
(AirportID, AirportName, AirportLocation) 
Values
('KUL', 'Kuala Lumpur International Airport', 'Sepang, Selangor, Malaysia'),
('SIN', 'Changi Airport', 'Singapore'),
('LHR', 'Heathrow Airport', 'London, United Kingdom'),
('JFK', 'John F. Kennedy International Airport', 'New York City, USA'),
('DXB', 'Dubai International Airport', 'Dubai, United Arab Emirates'),
('CDG', 'Charles de Gaulle Airport', 'Paris, France'),
('SYD', 'Sydney Airport', 'Sydney, Australia'),
('LAX', 'Los Angeles International Airport', 'Los Angeles, USA'),
('NRT', 'Narita International Airport', 'Tokyo, Japan'),
('FRA', 'Frankfurt Airport', 'Frankfurt, Germany'),
('PEK', 'Beijing Capital International Airport', 'Beijing, China'),
('AMS', 'Amsterdam Airport Schiphol', 'Amsterdam, Netherlands'),
('DEL', 'Indira Gandhi International Airport', 'Delhi, India'),
('IST', 'Istanbul Airport', 'Istanbul, Turkey'),
('GRU', 'São Paulo–Guarulhos International Airport', 'São Paulo, Brazil'),
('MAD', 'Adolfo Suárez Madrid–Barajas Airport', 'Madrid, Spain'),
('CPT', 'Cape Town International Airport', 'Cape Town, South Africa'),
('JNB', 'O.R. Tambo International Airport', 'Johannesburg, South Africa'),
('YYZ', 'Toronto Pearson International Airport', 'Toronto, Canada'),
('YVR', 'Vancouver International Airport', 'Vancouver, Canada'),
('MEX', 'Mexico City International Airport', 'Mexico City, Mexico'),
('GDL', 'Guadalajara International Airport', 'Guadalajara, Mexico'),
('BKK', 'Suvarnabhumi Airport', 'Bangkok, Thailand'),
('HKG', 'Hong Kong International Airport', 'Hong Kong'),
('DOH', 'Hamad International Airport', 'Doha, Qatar');

CREATE TABLE Flight (
FlightNumber NVARCHAR(50),
DepartureDate DATE,
AirportID NVARCHAR(50) FOREIGN KEY REFERENCES Airport(AirportID),
DepartureTime TIME,
Route NVARCHAR(50),
AircraftType NVARCHAR(50),
FlightType NVARCHAR(50),
PRIMARY KEY (FlightNumber, DepartureDate),
);

INSERT INTO Flight 
(FlightNumber, DepartureDate, AirportID, DepartureTime, Route, AircraftType, FlightType) 
values
('FL101', '2023-11-10', 'KUL', '08:00:00', 'KUL-SIN', 'Boeing 737', 'International'),
('FL102', '2023-11-11', 'SIN', '10:30:00', 'SIN-KUL', 'Airbus A320', 'International'),
('FL103', '2023-11-12', 'LHR', '12:00:00', 'LHR-JFK', 'Boeing 777', 'International'),
('FL104', '2023-11-13', 'JFK', '14:30:00', 'JFK-LHR', 'Airbus A380', 'International'),
('FL105', '2023-11-14', 'DXB', '16:00:00', 'DXB-CDG', 'Boeing 787', 'International'),
('FL106', '2023-11-15', 'CDG', '18:30:00', 'CDG-DXB', 'Airbus A350', 'International'),
('FL107', '2023-11-16', 'SYD', '20:00:00', 'SYD-LAX', 'Boeing 747', 'International'),
('FL108', '2023-11-17', 'LAX', '22:30:00', 'LAX-SYD', 'Airbus A330', 'International'),
('FL109', '2023-11-18', 'NRT', '00:00:00', 'NRT-FRA', 'Boeing 767', 'International'),
('FL110', '2023-11-19', 'FRA', '02:30:00', 'FRA-NRT', 'Airbus A319', 'International'),
('FL111', '2023-11-20', 'PEK', '04:00:00', 'PEK-AMS', 'Boeing 757', 'International'),
('FL112', '2023-11-21', 'AMS', '06:30:00', 'AMS-PEK', 'Airbus A321', 'International'),
('FL113', '2023-11-22', 'DEL', '08:00:00', 'DEL-IST', 'Boeing 737', 'International'),
('FL114', '2023-11-23', 'IST', '10:30:00', 'IST-DEL', 'Airbus A320', 'International'),
('FL115', '2023-11-24', 'GRU', '12:00:00', 'GRU-MAD', 'Boeing 777', 'International'),
('FL116', '2023-11-25', 'MAD', '14:30:00', 'MAD-GRU', 'Airbus A380', 'International'),
('FL117', '2023-11-26', 'CPT', '16:00:00', 'CPT-JNB', 'Boeing 787', 'International'),
('FL118', '2023-11-27', 'JNB', '18:30:00', 'JNB-CPT', 'Airbus A350', 'International'),
('FL119', '2023-11-28', 'YYZ', '20:00:00', 'YYZ-YVR', 'Boeing 747', 'Domestic'),
('FL120', '2023-11-29', 'YVR', '22:30:00', 'YVR-YYZ', 'Airbus A330', 'Domestic'),
('FL121', '2023-11-30', 'MEX', '00:00:00', 'MEX-GDL', 'Boeing 767', 'Domestic'),
('FL122', '2023-12-01', 'GDL', '02:30:00', 'GDL-MEX', 'Airbus A319', 'Domestic'),
('FL123', '2023-12-02', 'BKK', '04:00:00', 'BKK-HKG', 'Boeing 757', 'Domestic'),
('FL124', '2023-12-03', 'HKG', '06:30:00', 'HKG-BKK', 'Airbus A321', 'Domestic'),
('FL125', '2023-12-04', 'DOH', '08:00:00', 'DOH-MUC', 'Boeing 737', 'Domestic');

CREATE TABLE Seat (
SeatNumber NVARCHAR(50) PRIMARY KEY,
PNR NVARCHAR(50) FOREIGN KEY REFERENCES Booking(PNR),
FlightNumber NVARCHAR(50),
DepartureDate DATE, 
FareClass NVARCHAR(50),
TicketPrice DECIMAL(10, 2),
TaxesFees DECIMAL(10, 2),
BoardingGate NVARCHAR(10),
BaggageAllowance NVARCHAR(50),
SeatSelectionFee DECIMAL(10, 2),
BookingDate DATE,
AdditionalBaggageFee DECIMAL(10, 2),
SpecialServicesFee DECIMAL(10, 2),
FOREIGN KEY (FlightNumber, DepartureDate) REFERENCES Flight(FlightNumber, DepartureDate)
);

INSERT INTO Seat 
(SeatNumber, PNR, FlightNumber, DepartureDate, FareClass, TicketPrice, TaxesFees, BoardingGate, BaggageAllowance, SeatSelectionFee, BookingDate, AdditionalBaggageFee, SpecialServicesFee)
VALUES
('A1', 'B001', 'FL101', '2023-11-10', 'Economy', 250.00, 30.00, 'A5', '20kg', 15.00, '2023-11-10', 20.00, 10.00),
('A2', 'B001', 'FL101', '2023-11-10', 'Economy', 250.00, 30.00, 'A5', '20kg', 15.00, '2023-11-10', 20.00, 10.00),
('B1', 'B002', 'FL102', '2023-11-11', 'Business', 600.00, 50.00, 'B3', '30kg', 30.00, '2023-11-11', 35.00, 25.00),
('C1', 'B003', 'FL103', '2023-11-12', 'First', 1200.00, 80.00, 'C1', '40kg', 50.00, '2023-11-12', 50.00, 40.00),
('D1', 'B004', 'FL104', '2023-11-13', 'Economy', 280.00, 35.00, 'D7', '20kg', 15.00, '2023-11-13', 20.00, 10.00),
('E1', 'B005', 'FL105', '2023-11-14', 'Business', 650.00, 55.00, 'E2', '30kg', 30.00, '2023-11-14', 35.00, 25.00),
('F1', 'B006', 'FL106', '2023-11-15', 'First', 1300.00, 85.00, 'F5', '40kg', 50.00, '2023-11-15', 50.00, 40.00),
('G1', 'B007', 'FL107', '2023-11-16', 'Economy', 260.00, 32.00, 'G9', '20kg', 15.00, '2023-11-16', 20.00, 10.00),
('H1', 'B008', 'FL108', '2023-11-17', 'Business', 620.00, 52.00, 'H1', '30kg', 30.00, '2023-11-17', 35.00, 25.00),
('I1', 'B009', 'FL109', '2023-11-18', 'First', 1250.00, 82.00, 'I3', '40kg', 50.00, '2023-11-18', 50.00, 40.00),
('J1', 'B010', 'FL110', '2023-11-19', 'Economy', 270.00, 33.00, 'J6', '20kg', 15.00, '2023-11-19', 20.00, 10.00),
('K1', 'B011', 'FL111', '2023-11-20', 'Business', 630.00, 53.00, 'K4', '30kg', 30.00, '2023-11-20', 35.00, 25.00),
('L1', 'B012', 'FL112', '2023-11-21', 'First', 1280.00, 83.00, 'L7', '40kg', 50.00, '2023-11-21', 50.00, 40.00),
('M1', 'B013', 'FL113', '2023-11-22', 'Economy', 290.00, 36.00, 'M8', '20kg', 15.00, '2023-11-22', 20.00, 10.00),
('N1', 'B014', 'FL114', '2023-11-23', 'Business', 660.00, 56.00, 'N9', '30kg', 30.00, '2023-11-23', 35.00, 25.00),
('O1', 'B015', 'FL115', '2023-11-24', 'First', 1350.00, 88.00, 'O2', '40kg', 50.00, '2023-11-24', 50.00, 40.00),
('P1', 'B016', 'FL116', '2023-11-25', 'Economy', 300.00, 37.00, 'P5', '20kg', 15.00, '2023-11-25', 20.00, 10.00),
('Q1', 'B017', 'FL117', '2023-11-26', 'Business', 680.00, 58.00, 'Q6', '30kg', 30.00, '2023-11-26', 35.00, 25.00),
('R1', 'B018', 'FL118', '2023-11-27', 'First', 1400.00, 90.00, 'R8', '40kg', 50.00, '2023-11-27', 50.00, 40.00),
('S1', 'B019', 'FL119', '2023-11-28', 'Economy', 310.00, 38.00, 'S1', '20kg', 15.00, '2023-11-28', 20.00, 10.00),
('T1', 'B020', 'FL120', '2023-11-29', 'Business', 700.00, 60.00, 'T3', '30kg', 30.00, '2023-11-29', 35.00, 25.00),
('U1', 'B021', 'FL121', '2023-11-30', 'First', 1450.00, 92.00, 'U4', '40kg', 50.00, '2023-11-30', 50.00, 40.00),
('V1', 'B022', 'FL122', '2023-12-01', 'Economy', 320.00, 39.00, 'V7', '20kg', 15.00, '2023-12-01', 20.00, 10.00),
('W1', 'B023', 'FL123', '2023-12-02', 'Business', 720.00, 62.00, 'W2', '30kg', 30.00, '2023-12-02', 35.00, 25.00),
('X1', 'B024', 'FL124', '2023-12-03', 'First', 1500.00, 95.00, 'X5', '40kg', 50.00, '2023-12-03', 50.00, 40.00);

CREATE TABLE Payment (
PaymentID INT PRIMARY KEY,
PNR NVARCHAR(50) FOREIGN KEY REFERENCES Booking(PNR),
PaymentMethod NVARCHAR(50),
TransactionDate DATE,
TransactionAmount DECIMAL(10, 2),
);

INSERT INTO Payment 
(PaymentID, PNR, PaymentMethod, TransactionDate, TransactionAmount) 
Values
(1, 'B001', 'Credit Card', '2023-10-26', 500.00),
(2, 'B002', 'Debit Card', '2023-10-26', 350.50),
(3, 'B003', 'Online Banking', '2023-10-27', 750.25),
(4, 'B004', 'Credit Card', '2023-10-27', 400.00),
(5, 'B005', 'Debit Card', '2023-10-28', 600.75),
(6, 'B006', 'Online Banking', '2023-10-28', 250.00),
(7, 'B007', 'Credit Card', '2023-10-29', 800.50),
(8, 'B008', 'Debit Card', '2023-10-29', 450.25),
(9, 'B009', 'Online Banking', '2023-10-30', 900.00),
(10, 'B010', 'Credit Card', '2023-10-30', 300.75),
(11, 'B011', 'Debit Card', '2023-10-31', 550.50),
(12, 'B012', 'Online Banking', '2023-10-31', 700.25),
(13, 'B013', 'Credit Card', '2023-11-01', 420.00),
(14, 'B014', 'Debit Card', '2023-11-01', 620.75),
(15, 'B015', 'Online Banking', '2023-11-02', 270.00),
(16, 'B016', 'Credit Card', '2023-11-02', 820.50),
(17, 'B017', 'Debit Card', '2023-11-03', 470.25),
(18, 'B018', 'Online Banking', '2023-11-03', 920.00),
(19, 'B019', 'Credit Card', '2023-11-04', 320.75),
(20, 'B020', 'Debit Card', '2023-11-04', 570.50),
(21, 'B021', 'Online Banking', '2023-11-05', 720.25),
(22, 'B022', 'Credit Card', '2023-11-05', 440.00),
(23, 'B023', 'Debit Card', '2023-11-06', 640.75),
(24, 'B024', 'Online Banking', '2023-11-06', 290.00),
(25, 'B025', 'Credit Card', '2023-11-07', 840.50);

CREATE TABLE ChangeCancellation (
PNR NVARCHAR(50) PRIMARY KEY,
ChangeFee DECIMAL(10, 2),
CancellationFee DECIMAL(10, 2),
RefundAmount DECIMAL(10, 2),
BookingClass NVARCHAR(50),
FOREIGN KEY (PNR) REFERENCES Booking(PNR)
);

INSERT INTO ChangeCancellation 
(PNR, ChangeFee, CancellationFee, RefundAmount, BookingClass) 
Values
('B001', 50.00, NULL, NULL, 'Economy'),
('B002', NULL, 100.00, 400.00, 'Business'),
('B003', 25.00, NULL, NULL, 'First'),
('B004', NULL, NULL, NULL, 'Economy'),
('B005', 75.00, 150.00, 850.00, 'Business'),
('B006', 30.00, NULL, NULL, 'First'),
('B007', NULL, 120.00, 680.00, 'Economy'),
('B008', 40.00, NULL, NULL, 'Business'),
('B009', 60.00, 180.00, 1020.00, 'First'),
('B010', NULL, NULL, NULL, 'Economy'),
('B011', 80.00, NULL, NULL, 'Business'),
('B012', NULL, 200.00, 900.00, 'First'),
('B013', 20.00, NULL, NULL, 'Economy'),
('B014', 90.00, 220.00, 1180.00, 'Business'),
('B015', NULL, NULL, NULL, 'First'),
('B016', 35.00, NULL, NULL, 'Economy'),
('B017', NULL, 250.00, 1250.00, 'Business'),
('B018', 45.00, NULL, NULL, 'First'),
('B019', 100.00, 280.00, 1320.00, 'Economy'),
('B020', NULL, NULL, NULL, 'Business'),
('B021', 55.00, NULL, NULL, 'First'),
('B022', NULL, 300.00, 1400.00, 'Economy'),
('B023', 65.00, NULL, NULL, 'Business'),
('B024', 110.00, 320.00, 1580.00, 'First'),
('B025', NULL, NULL, NULL, 'Economy');

CREATE TABLE LoyaltyMember(
LoyaltyMemberID NVARCHAR(50) PRIMARY KEY,
);

INSERT INTO LoyaltyMember 
(LoyaltyMemberID) 
VALUES
('LM001'), 
('LM002'), 
('LM003'), 
('LM004'), 
('LM005'),
('LM006'), 
('LM007'), 
('LM008'), 
('LM009'), 
('LM010'),
('LM011'), 
('LM012'), 
('LM013'), 
('LM014'), 
('LM015'),
('LM016'), 
('LM017'), 
('LM018'), 
('LM019'), 
('LM020'),
('LM021'), 
('LM022'), 
('LM023'), 
('LM024'), 
('LM025');

CREATE TABLE LoyaltyPoints( 
LoyaltyMemberID NVARCHAR(50) FOREIGN KEY REFERENCES LoyaltyMember(LoyaltyMemberID),
PNR NVARCHAR(50) FOREIGN KEY REFERENCES Booking(PNR),
LoyaltyPoints NVARCHAR(50),
EarnedMiles DECIMAL(10,2),
);

INSERT INTO LoyaltyPoints
(LoyaltyMemberID, PNR, LoyaltyPoints, EarnedMiles) 
Values
('LM001', 'B001', 1000, 250.00),
('LM002', 'B002', 1500, 600.00),
('LM003', 'B003', 2000, 1200.00),
('LM004', 'B004', 1200, 280.00),
('LM005', 'B005', 1800, 650.00),
('LM006', 'B006', 2200, 1300.00),
('LM007', 'B007', 1300, 260.00),
('LM008', 'B008', 1900, 620.00),
('LM009', 'B009', 2500, 1250.00),
('LM010', 'B010', 1400, 270.00),
('LM011', 'B011', 2100, 630.00),
('LM012', 'B012', 2800, 1280.00),
('LM013', 'B013', 1600, 290.00),
('LM014', 'B014', 2300, 660.00),
('LM015', 'B015', 3000, 1350.00),
('LM016', 'B016', 1700, 300.00),
('LM017', 'B017', 2400, 680.00),
('LM018', 'B018', 3200, 1400.00),
('LM019', 'B019', 1800, 310.00),
('LM020', 'B020', 2600, 700.00),
('LM021', 'B021', 3500, 1450.00),
('LM022', 'B022', 1900, 320.00),
('LM023', 'B023', 2700, 720.00),
('LM024', 'B024', 3800, 1500.00),
('LM025', 'B025', 2000, 330.00);


SELECT DATEPART(MONTH, f.DepartureDate) AS Month,
f.FlightNumber,
f.DepartureDate,
s.SeatNumber,
s.FareClass,
s.TicketPrice AS HighestPrice FROM Seat s
INNER JOIN Flight f ON s.FlightNumber = f.FlightNumber AND s.DepartureDate = f.DepartureDate WHERE s.TicketPrice = (SELECT MAX(s2.TicketPrice) FROM Seat s2
INNER JOIN Flight f2 ON s2.FlightNumber = f2.FlightNumber AND s2.DepartureDate = f2.DepartureDate WHERE DATEPART(MONTH, f2.DepartureDate) = DATEPART(MONTH, f.DepartureDate))
AND f.DepartureDate BETWEEN DATEADD(MONTH, -3, '2023-12-04') AND '2023-12-04' ORDER BY Month;


7.-- Which ticket class has the highest priced tickets in each of the last three consecutive months, and how many tickets were sold at that highest price?

SELECT MONTH(f.DepartureDate) AS Month,
f.FlightNumber,
f.DepartureDate,
s.SeatNumber,
s.FareClass,
s.TicketPrice AS HighestPrice,
(SELECT COUNT(*) FROM Seat s2
INNER JOIN Flight f2 ON s2.FlightNumber = f2.FlightNumber AND s2.DepartureDate = f2.DepartureDate

WHERE MONTH(f2.DepartureDate) = MONTH(f.DepartureDate) AND s2.TicketPrice = s.TicketPrice) AS TicketsSold
FROM Seat s INNER JOIN Flight f ON s.FlightNumber = f.FlightNumber AND s.DepartureDate = f.DepartureDate
INNER JOIN (SELECT MONTH(f2.DepartureDate) AS Month, 
MAX(s2.TicketPrice) AS MaxPrice FROM Seat s2
INNER JOIN Flight f2 ON s2.FlightNumber = f2.FlightNumber AND s2.DepartureDate = f2.DepartureDate

WHERE f2.DepartureDate BETWEEN DATEADD(MONTH, -3, '2023-12-04') AND '2023-12-04'
GROUP BY MONTH(f2.DepartureDate)) maxp ON MONTH(f.DepartureDate) = maxp.Month 
AND s.TicketPrice = maxp.MaxPrice ORDER BY Month;

14.	-- Which month has the lowest prices for domestic flights?

WITH DomesticAverages AS (
SELECT DATEPART(MONTH, f.DepartureDate) AS Month,
AVG(s.TicketPrice) AS AvgPrice, 
COUNT(*) AS FlightCount FROM Seat s INNER JOIN Flight f ON s.FlightNumber = f.FlightNumber 
AND s.DepartureDate = f.DepartureDate WHERE f.FlightType = 'Domestic'
GROUP BY DATEPART(MONTH, f.DepartureDate)
)
SELECT TOP 1
Month,
AvgPrice AS LowestAveragePrice,
FlightCount
FROM DomesticAverages
ORDER BY AvgPrice ASC;

15. -- Which class is most preferred by passengers for their flights?
SELECT TOP 1
    FareClass,
    COUNT(*) AS TotalBookings
FROM Seat
GROUP BY FareClass
ORDER BY TotalBookings DESC;
