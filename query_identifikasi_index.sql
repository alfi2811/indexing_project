--Pencarian Non key

--Query 1
SELECT * FROM CARS WHERE car_name = 'CX-7';

--Query 2
SELECT t.car_id, c.car_brand, c.car_name, t.duration_day FROM TRANSACTION t INNER JOIN CARS c ON t.car_id = c.id 
where c.car_brand = 'Ford' ORDER BY c.car_name;

--Query 3
SELECT t.id, t.renter_id, t.car_id, c.car_name, c.car_year,  r.name, r.gender FROM TRANSACTION t
INNER JOIN CARS c ON t.car_id = c.id 
INNER JOIN RENTER r ON t.renter_id = r.id  
where r.gender = 'Female' AND c.car_year = '2005';

--Pencarian Key

--Query 4
SELECT c.id, c.car_name, c.car_year, COUNT(t.car_id) FROM TRANSACTION t
INNER JOIN CARS c ON c.id = t.car_id GROUP BY c.id, c.car_name, c.car_year
HAVING COUNT(t.car_id) > 15 ORDER BY COUNT(t.car_id) DESC;

--Query 5
SELECT * FROM TRANSACTION t
INNER JOIN CARS c ON c.id = t.car_id
INNER JOIN RENTER r ON r.id = t.renter_id 
WHERE t.car_id = 50;

--Masukkan Index ke Query 1
CREATE INDEX idx_car_name ON CARS(car_name);

--Masukkan Index ke Query 2
CREATE INDEX idx_car_brand ON CARS(car_brand);

--Masukkan Index ke Query 3
CREATE INDEX idx_car_year ON CARS(car_year);
CREATE INDEX idx_renter_gender ON RENTER(gender);

--Masukkan Index ke Query 4 & 5
CREATE INDEX idx_transaction_car_id ON TRANSACTION(car_id);

