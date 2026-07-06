# MySQL-Retail-Sales-Data-Cleaning
Data cleaning and transformation of a retail sales dataset using MySQL Workbench.

## Project Overview
This project focuses on cleaning, standardizing, and optimizing a raw retail sales dataset using MySQL. The goal was to transform transactional records into a reliable source suitable for business intelligence reporting, while implementing constraints to prevent future data degradation.

## Core Cleaning & Optimization Steps

### 1. Safeguarding Integrity (Preventing Future Duplicates)
*   **Schema Modification:** Altered the target table structure to enforce relational integrity.
*   **Constraints:** Implemented `UNIQUE` constraints across composite fields where necessary to automatically reject future duplicate data entry attempts.

## Tech Stack & SQL Techniques
*   **Environment:** MySQL Workbench
*   **Key Clauses Used:** `ALTER TABLE`, `ADD CONSTRAINT UNIQUE`, `STR_TO_DATE()`.

## How to Use
1. Import your raw, uncleaned retail dataset into your MySQL instance.
2. Execute the `retail_sales_cleaning.sql` script sequentially.
3. The script will clean the historical records and establish structural rules to block duplicate data moving forward.
