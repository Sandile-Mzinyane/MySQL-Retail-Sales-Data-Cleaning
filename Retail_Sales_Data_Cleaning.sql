SELECT *
FROM retail_sales_dataset;

CREATE TABLE retail_sales_staging
LIKE retail_sales_dataset;

SELECT *
FROM retail_sales_staging;

INSERT INTO retail_sales_staging
SELECT *
FROM retail_sales_dataset;

DESCRIBE retail_sales_staging;

-- Identifying Duplicates
SELECT `Customer ID`, COUNT(*)
FROM retail_sales_staging
GROUP BY `Customer ID`
HAVING COUNT(*) > 1;

-- Prevent Future Duplicates
ALTER TABLE retail_sales_staging
MODIFY COLUMN `Customer ID` VARCHAR(255);

ALTER TABLE retail_sales_staging
ADD UNIQUE (`Customer ID`);

-- Standardizing Data

-- Data Sample
SELECT *
FROM retail_sales_staging
LIMIT 10;

UPDATE retail_sales_staging
SET `Date` = STR_TO_DATE(`Date`, '%m/%d/%Y');

-- Date Column Conversion
ALTER TABLE retail_sales_staging
MODIFY COLUMN `Date` DATE;