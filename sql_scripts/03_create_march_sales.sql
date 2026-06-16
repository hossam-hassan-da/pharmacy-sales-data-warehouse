-- Create March Sales Table
-- Part of Pharmacy Sales Data Warehouse

CREATE TABLE march_sales (
    march_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_number INT,
    transaction_price DECIMAL(10,2),
    payment DECIMAL(10,2),
    date VARCHAR(50),
    time VARCHAR(50),
    discount_percentage DECIMAL(10,2),
    discount_value DECIMAL(10,2),
    total_profit DECIMAL(10,2),
    notes VARCHAR(50)
);