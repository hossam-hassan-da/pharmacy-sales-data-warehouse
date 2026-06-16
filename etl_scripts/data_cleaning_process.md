# Data Cleaning Process (Using Excel)

## Overview
Raw pharmacy sales data was cleaned and prepared using Microsoft Excel before being imported into MySQL.

## Cleaning Steps Performed

### 1. **Handling Missing Values**
- Identified blank cells in critical columns (transaction_number, prices, dates)
- Filled missing transaction numbers by dragging down or using previous valid entries
- Replaced empty numerical fields with "0" where appropriate
- Added "No notes" for empty notes fields

### 2. **Standardizing Date Formats**
- Converted all dates to consistent format: **YYYY-MM-DD**
- Used Excel's TEXT function: `=TEXT(A2,"yyyy-mm-dd")`
- Ensured all 5 months followed the same date structure

### 3. **Standardizing Time Formats**
- Converted time entries to **HH:MM:SS** format
- Used Excel's TEXT function: `=TEXT(B2,"hh:mm:ss")`

### 4. **Validating Numerical Data**
- Checked for negative values in price and profit columns
- Removed or corrected invalid entries
- Recalculated discount values using formula:
Discount Value = Transaction Price × (Discount Percentage / 100)

### 5. **Removing Duplicates**
- Used Excel's **Data > Remove Duplicates** feature
- Selected "transaction_number" as the key column to identify duplicates
- Ensured each transaction appears only once

### 6. **Data Type Consistency**
- Ensured all price columns were formatted as **Number** with 2 decimal places
- Converted text columns to proper format
- Verified all columns had consistent data types

### 7. **Final Validation**
- Checked row counts across all months
- Verified no NULL values in critical fields
- Confirmed data integrity before SQL import

## Tools Used
- **Microsoft Excel** for data cleaning
- **Excel Functions**: TEXT(), IF(), VLOOKUP() for validation
- **Remove Duplicates** feature
- **Find & Replace** for bulk corrections

## Output
Cleaned CSV files ready for MySQL import:
- january_sales_cleaned.csv
- february_sales_cleaned.csv
- march_sales_cleaned.csv
- april_sales_cleaned.csv
- may_sales_cleaned.csv