-- first obj
SELECT * FROM candy WHERE candy_price >= 2 AND candy_price <= 4;
SELECT manufacturer_id, COUNT(*) AS candy_count FROM candy GROUP BY manufacturer_id HAVING candy_count > 1;

-- second obj
SELECT COUNT(*) AS candy_count FROM candy;
SELECT SUM(candy_price) AS total_profit FROM candy;
SELECT AVG(candy_price) AS avg_price FROM candy;
SELECT MIN(candy_price) AS min_price FROM candy;
SELECT MAX(candy_price) AS max_price FROM candy;

-- third obj
SELECT candy.candy_name, candy.candy_price, manufacturer.manufacturer_name
FROM candy
JOIN manufacturer
ON candy.manufacturer_id = manufacturer.manufacturer_id;

-- optional third obj, utilizing different JOIN Methods
SELECT candy.candy_name, candy.candy_price, manufacturer.manufacturer_name
FROM candy 
LEFT JOIN manufacturer 
ON candy.candy_id = manufacturer.manufacturer_id;

SELECT candy.candy_name, candy.candy_price, manufacturer.manufacturer_name
FROM candy 
RIGHT JOIN manufacturer 
ON candy.candy_id = manufacturer.manufacturer_id;

SELECT candy.candy_name, candy.candy_price, manufacturer.manufacturer_name
FROM candy 
CROSS JOIN manufacturer 
ON candy.candy_id = manufacturer.manufacturer_id;

-- fourth obj
SELECT candy_name, candy_price, (SELECT manufacturer_name FROM manufacturer WHERE candy.manufacturer_id = manufacturer.manufacturer_id) AS manufacturer_name
FROM candy;
