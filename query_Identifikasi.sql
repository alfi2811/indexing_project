SELECT * FROM CARS WHERE car_brand = 'Ford';

SELECT * FROM TRANSACTION INNER JOIN CARS ON TRANSACTION.car_id = CARS.id where CARS.car_brand = 'Honda';

SELECT TRANSACTION.id, TRANSACTION.renter_id, TRANSACTION.car_id, RENTER.name, RENTER.gender FROM TRANSACTION
INNER JOIN CARS ON TRANSACTION.car_id = CARS.id 
INNER JOIN RENTER ON TRANSACTION.renter_id = RENTER.id 
where RENTER.gender = 'Female' AND CARS.car_year BETWEEN 2005 AND 2007;

SELECT TRANSACTION.id, TRANSACTION.car_id, CARS.car_name, CARS.car_year FROM TRANSACTION
INNER JOIN CARS ON TRANSACTION.car_id = CARS.id  
where TRANSACTION.id <= 20 AND CARS.id <= 10;

SELECT TRANSACTION.id, TRANSACTION.car_id, CARS.car_name, CARS.car_year FROM TRANSACTION
INNER JOIN CARS ON TRANSACTION.car_id = CARS.id 
INNER JOIN RENTER ON TRANSACTION.renter_id = RENTER.id
where TRANSACTION.id > CARS.id AND TRANSACTION.id < RENTER.id;

