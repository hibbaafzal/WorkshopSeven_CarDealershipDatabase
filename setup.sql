-- Drop and create the database
DROP DATABASE IF EXISTS dealership_db;
CREATE DATABASE IF NOT EXISTS dealership_db;
USE dealership_db;

-- Create the tables
CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

CREATE TABLE vehicles (
    vin VARCHAR(17) PRIMARY KEY NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(20)
);

CREATE TABLE inventory (
    dealership_id INT,
    vin VARCHAR(17),
    PRIMARY KEY (dealership_id, vin),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_name VARCHAR(255),
    vin VARCHAR(17),
    contract_date DATE,
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE lease_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lessee_name VARCHAR(255),
    vin VARCHAR(17),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

-- Populate the dealerships table
INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES 
(1, 'Auto Nation', '123 Main St', '555-1234'),
(2, 'CarMax', '456 Elm St', '555-5678'),
(3, 'DriveTime', '789 Oak St', '555-8765'),
(4, 'Best Motors', '321 Pine St', '555-4321'),
(5, 'Super Cars', '654 Maple St', '555-6789'),
(6, 'Luxury Wheels', '987 Birch St', '555-9876'),
(7, 'Budget Cars', '234 Cedar St', '555-3456'),
(8, 'Speedy Autos', '876 Willow St', '555-8765'),
(9, 'Elite Motors', '567 Ash St', '555-5678'),
(10, 'Family Autos', '789 Pine St', '555-7890');

-- Populate the vehicles table
INSERT INTO vehicles (vin, make, model, year, color)
VALUES 
('1HGCM82633A789030', 'BMW', '3 Series', 2022, 'Black'),
('1HGCM82633A789031', 'Audi', 'Q5', 2021, 'Silver'),
('1HGCM82633A789032', 'Mercedes-Benz', 'E-Class', 2023, 'Grey'),
('1HGCM82633A789033', 'Volkswagen', 'Golf', 2022, 'Red'),
('1HGCM82633A789034', 'Kia', 'Sportage', 2021, 'Blue'),
('1HGCM82633A789035', 'Subaru', 'Outback', 2023, 'Green'),
('1HGCM82633A789036', 'Hyundai', 'Santa Fe', 2022, 'Black'),
('1HGCM82633A789037', 'Jeep', 'Wrangler', 2021, 'White'),
('1HGCM82633A789038', 'Ford', 'F-150', 2023, 'Red'),
('1HGCM82633A789039', 'Chevrolet', 'Silverado', 2022, 'Blue'),
('1HGCM82633A789040', 'Honda', 'Pilot', 2021, 'Silver'),
('1HGCM82633A789041', 'Toyota', 'Highlander', 2023, 'Black'),
('1HGCM82633A789042', 'Nissan', 'Pathfinder', 2022, 'White'),
('1HGCM82633A789043', 'Mazda', 'CX-9', 2021, 'Grey'),
('1HGCM82633A789044', 'BMW', 'X3', 2023, 'Blue'),
('1HGCM82633A789045', 'Audi', 'Q7', 2022, 'Black'),
('1HGCM82633A789046', 'Mercedes-Benz', 'GLC', 2021, 'White'),
('1HGCM82633A789047', 'Volkswagen', 'Tiguan', 2023, 'Red'),
('1HGCM82633A789048', 'Kia', 'Telluride', 2022, 'Blue'),
('1HGCM82633A789049', 'Subaru', 'Ascent', 2021, 'Silver'),
('1HGCM82633A789050', 'Hyundai', 'Palisade', 2023, 'Black'),
('1HGCM82633A789051', 'Jeep', 'Compass', 2022, 'White'),
('1HGCM82633A789052', 'Ford', 'Bronco', 2021, 'Red'),
('1HGCM82633A789053', 'Chevrolet', 'Blazer', 2023, 'Blue'),
('1HGCM82633A789054', 'Honda', 'Ridgeline', 2022, 'Silver'),
('1HGCM82633A789055', 'Toyota', 'Tacoma', 2021, 'Black'),
('1HGCM82633A789056', 'Nissan', 'Frontier', 2023, 'White'),
('1HGCM82633A789057', 'Mazda', '6', 2022, 'Grey'),
('1HGCM82633A789058', 'BMW', '5 Series', 2021, 'Blue'),
('1HGCM82633A789059', 'Audi', 'A6', 2023, 'Black'),
('1HGCM82633A789060', 'Mercedes-Benz', 'S-Class', 2022, 'White'),
('1HGCM82633A789061', 'Volkswagen', 'Jetta', 2021, 'Red'),
('1HGCM82633A789062', 'Kia', 'K5', 2023, 'Blue'),
('1HGCM82633A789063', 'Subaru', 'Legacy', 2022, 'Silver'),
('1HGCM82633A789064', 'Hyundai', 'Sonata', 2021, 'Black'),
('1HGCM82633A789065', 'Jeep', 'Cherokee', 2023, 'White'),
('1HGCM82633A789066', 'Ford', 'Explorer', 2022, 'Grey'),
('1HGCM82633A789067', 'Chevrolet', 'Tahoe', 2021, 'Blue'),
('1HGCM82633A789068', 'Honda', 'Odyssey', 2023, 'Black'),
('1HGCM82633A789069', 'Toyota', 'Sienna', 2022, 'White'),
('1HGCM82633A789070', 'Nissan', 'Murano', 2021, 'Red'),
('1HGCM82633A789071', 'Mazda', 'CX-30', 2023, 'Blue'),
('1HGCM82633A789072', 'BMW', 'X1', 2022, 'Silver'),
('1HGCM82633A789073', 'Audi', 'Q3', 2021, 'Black'),
('1HGCM82633A789074', 'Mercedes-Benz', 'GLE', 2023, 'White'),
('1HGCM82633A789075', 'Volkswagen', 'Atlas', 2022, 'Red'),
('1HGCM82633A789076', 'Kia', 'Niro', 2021, 'Blue'),
('1HGCM82633A789077', 'Subaru', 'Crosstrek', 2023, 'Green'),
('1HGCM82633A789078', 'Hyundai', 'Kona', 2022, 'Black'),
('1HGCM82633A789079', 'Jeep', 'Gladiator', 2021, 'White'),
('1HGCM82633A789080', 'Ford', 'Ranger', 2023, 'Red'),
('1HGCM82633A789081', 'Chevrolet', 'Colorado', 2022, 'Blue'),
('1HGCM82633A789082', 'Honda', 'Passport', 2021, 'Silver'),
('1HGCM82633A789083', 'Toyota', '4Runner', 2023, 'Black'),
('1HGCM82633A789084', 'Nissan', 'Titan', 2022, 'White'),
('1HGCM82633A789085', 'Mazda', 'CX-3', 2021, 'Grey'),
('1HGCM82633A789086', 'BMW', 'X7', 2023, 'Blue');

-- Populate the inventory table
INSERT INTO inventory (dealership_id, vin)
VALUES 
(1, '1HGCM82633A789030'),
(2, '1HGCM82633A789031'),
(3, '1HGCM82633A789032'),
(4, '1HGCM82633A789033'),
(5, '1HGCM82633A789034'),
(6, '1HGCM82633A789035'),
(7, '1HGCM82633A789036'),
(8, '1HGCM82633A789037'),
(9, '1HGCM82633A789038'),
(10, '1HGCM82633A789039'),
(1, '1HGCM82633A789040'),
(2, '1HGCM82633A789041'),
(3, '1HGCM82633A789042'),
(4, '1HGCM82633A789043'),
(5, '1HGCM82633A789044'),
(6, '1HGCM82633A789045'),
(7, '1HGCM82633A789046'),
(8, '1HGCM82633A789047'),
(9, '1HGCM82633A789048'),
(10, '1HGCM82633A789049'),
(1, '1HGCM82633A789050'),
(2, '1HGCM82633A789051'),
(3, '1HGCM82633A789052'),
(4, '1HGCM82633A789053'),
(5, '1HGCM82633A789054'),
(6, '1HGCM82633A789055'),
(7, '1HGCM82633A789056'),
(8, '1HGCM82633A789057'),
(9, '1HGCM82633A789058'),
(10, '1HGCM82633A789059'),
(1, '1HGCM82633A789060'),
(2, '1HGCM82633A789061'),
(3, '1HGCM82633A789062'),
(4, '1HGCM82633A789063'),
(5, '1HGCM82633A789064'),
(6, '1HGCM82633A789065'),
(7, '1HGCM82633A789066'),
(8, '1HGCM82633A789067'),
(9, '1HGCM82633A789068'),
(10, '1HGCM82633A789069'),
(1, '1HGCM82633A789070'),
(2, '1HGCM82633A789071'),
(3, '1HGCM82633A789072'),
(4, '1HGCM82633A789073'),
(5, '1HGCM82633A789074'),
(6, '1HGCM82633A789075'),
(7, '1HGCM82633A789076'),
(8, '1HGCM82633A789077'),
(9, '1HGCM82633A789078'),
(10, '1HGCM82633A789079'),
(1, '1HGCM82633A789080'),
(2, '1HGCM82633A789081'),
(3, '1HGCM82633A789082'),
(4, '1HGCM82633A789083'),
(5, '1HGCM82633A789084'),
(6, '1HGCM82633A789085'),
(7, '1HGCM82633A789086');

-- Populate the sales_contracts table
INSERT INTO sales_contracts (id, buyer_name, vin, contract_date)
VALUES 
(1, 'John Doe', '1HGCM82633A789030', '2024-01-15'),
(2, 'Alice Smith', '1HGCM82633A789031', '2024-02-20'),
(3, 'Michael Johnson', '1HGCM82633A789032', '2024-03-25'),
(4, 'Emma Davis', '1HGCM82633A789033', '2024-04-30'),
(5, 'Olivia Wilson', '1HGCM82633A789034', '2024-05-05'),
(6, 'Sophia Martinez', '1HGCM82633A789035', '2024-06-10'),
(7, 'Liam Thompson', '1HGCM82633A789036', '2024-07-15'),
(8, 'Mason White', '1HGCM82633A789037', '2024-08-20'),
(9, 'Isabella Moore', '1HGCM82633A789038', '2024-09-25'),
(10, 'Ethan Brown', '1HGCM82633A789039', '2024-10-30'),
(11, 'Ava Taylor', '1HGCM82633A789040', '2024-11-05'),
(12, 'James Anderson', '1HGCM82633A789041', '2024-12-10'),
(13, 'Mia Clark', '1HGCM82633A789042', '2025-01-15'),
(14, 'Alexander Hall', '1HGCM82633A789043', '2025-02-20'),
(15, 'Charlotte Lewis', '1HGCM82633A789044', '2025-03-25'),
(16, 'Henry Allen', '1HGCM82633A789045', '2025-04-30'),
(17, 'Amelia Young', '1HGCM82633A789046', '2025-05-05'),
(18, 'Lucas King', '1HGCM82633A789047', '2025-06-10'),
(19, 'Harper Wright', '1HGCM82633A789048', '2025-07-15'),
(20, 'Benjamin Scott', '1HGCM82633A789049', '2025-08-20'),
(21, 'Evelyn Green', '1HGCM82633A789050', '2025-09-25'),
(22, 'Elijah Adams', '1HGCM82633A789051', '2025-10-30'),
(23, 'Abigail Nelson', '1HGCM82633A789052', '2025-11-05'),
(24, 'William Baker', '1HGCM82633A789053', '2025-12-10'),
(25, 'Emily Hill', '1HGCM82633A789054', '2026-01-15'),
(26, 'Samuel Perez', '1HGCM82633A789055', '2026-02-20'),
(27, 'Ella Mitchell', '1HGCM82633A789056', '2026-03-25'),
(28, 'Daniel Carter', '1HGCM82633A789057', '2026-04-30'),
(29, 'Avery Roberts', '1HGCM82633A789058', '2026-05-05'),
(30, 'Matthew Turner', '1HGCM82633A789059', '2026-06-10'),
(31, 'Scarlett Phillips', '1HGCM82633A789060', '2026-07-15'),
(32, 'Jackson Campbell', '1HGCM82633A789061', '2026-08-20'),
(33, 'Victoria Parker', '1HGCM82633A789062', '2026-09-25');

-- Populate the lease_contracts table
INSERT INTO lease_contracts (id, lessee_name, vin)
VALUES 
(1, 'Jane Smith', '1HGCM82633A789031'),
(2, 'Bob Johnson', '1HGCM82633A789032'),
(3, 'Charlie Brown', '1HGCM82633A789033'),
(4, 'Emily White', '1HGCM82633A789034'),
(5, 'Liam Thompson', '1HGCM82633A789035'),
(6, 'Sophia Martinez', '1HGCM82633A789036'),
(7, 'Mason White', '1HGCM82633A789037'),
(8, 'Isabella Moore', '1HGCM82633A789038'),
(9, 'Ethan Brown', '1HGCM82633A789039'),
(10, 'Ava Taylor', '1HGCM82633A789040'),
(11, 'James Anderson', '1HGCM82633A789041'),
(12, 'Mia Clark', '1HGCM82633A789042'),
(13, 'Alexander Hall', '1HGCM82633A789043'),
(14, 'Charlotte Lewis', '1HGCM82633A789044'),
(15, 'Henry Allen', '1HGCM82633A789045'),
(16, 'Amelia Young', '1HGCM82633A789046'),
(17, 'Lucas King', '1HGCM82633A789047'),
(18, 'Harper Wright', '1HGCM82633A789048'),
(19, 'Benjamin Scott', '1HGCM82633A789049'),
(20, 'Evelyn Green', '1HGCM82633A789050'),
(21, 'Elijah Adams', '1HGCM82633A789051'),
(22, 'Abigail Nelson', '1HGCM82633A789052'),
(23, 'William Baker', '1HGCM82633A789053'),
(24, 'Emily Hill', '1HGCM82633A789054'),
(25, 'Samuel Perez', '1HGCM82633A789055'),
(26, 'Ella Mitchell', '1HGCM82633A789056'),
(27, 'Daniel Carter', '1HGCM82633A789057'),
(28, 'Avery Roberts', '1HGCM82633A789058'),
(29, 'Matthew Turner', '1HGCM82633A789059'),
(30, 'Scarlett Phillips', '1HGCM82633A789060'),
(31, 'Jackson Campbell', '1HGCM82633A789061'),
(32, 'Victoria Parker', '1HGCM82633A789062');
