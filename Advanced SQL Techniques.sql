-- Merge technique (union)
SELECT id, name, price
FROM product.`neweyecare_csv`
UNION 
SELECT id, name, price
FROM product3.`newwellness csv`;

-- Viewing products 
SELECT id, name, brand, price
FROM product.`neweyecare_csv`;

-- Aggregate functions
SELECT 
    COUNT(*) AS TotalProducts,
    SUM(price) AS TotalPrice,
    AVG(price) AS AveragePrice,
    MIN(price) AS LowestPrice,
    MAX(price) AS HighestPrice
FROM (
    SELECT price FROM product.`neweyecare_csv`
    UNION ALL
    SELECT price FROM product3.`newwellness csv`
) AS combined_data;

-- Trnasactions, adding products to find the total cost
SELECT SUM(price) AS TotalCost
FROM product.`neweyecare_csv`
WHERE id IN (1, 2);

-- Data Quality and Integrity. Checks for missing or inconsistent data. Checks for inconsistencies if price should always be greater than 0.
SELECT *
FROM product.`neweyecare_csv`
WHERE price <= 0;

-- Performance Optimization. Create an index on the price column in newwellness csv table.
CREATE INDEX idx_newwellness_price ON product3.`newwellness csv`(price);

-- Drops index on price in newwellness csv table
ALTER TABLE product3.`newwellness csv` DROP INDEX idx_newwellness_price;