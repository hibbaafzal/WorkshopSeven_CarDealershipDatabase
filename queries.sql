
-- 1. 
SELECT * FROM dealerships;


-- -- 2. find vehicles from a specific dealership
SELECT * 
FROM vehicles 
JOIN inventory ON vehicles.vin = inventory.vin
WHERE inventory.dealership_id = 1;

-- -- 3. Find car by vin
SELECT * FROM vehicles
WHERE vin = '1HGCM82633A789030'; 

-- -- 4. Find dealership where a certain car is located by VIN
SELECT * 
FROM dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
WHERE inventory.vin = '1HGCM82633A789030'; 


-- -- 5. all dealerships that have a certain car type.
SELECT DISTINCT *
FROM dealerships
JOIN inventory
ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles ON inventory.vin = vehicles.vin
WHERE vehicles.make = 'BMW' AND vehicles.model = 'X3' AND vehicles.color = 'Blue';



-- 6. All sales information for a specific dealer for a specific date range
SELECT sales_contracts.*
FROM sales_contracts
JOIN inventory ON sales_contracts.vin = inventory.vin
WHERE inventory.dealership_id = 1
AND sales_contracts.contract_date BETWEEN '2023-01-01' AND '2024-12-31';


