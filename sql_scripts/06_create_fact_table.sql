-- Create Fact Sales Table
-- Central table linking all monthly sales (Star Schema)
-- Part of Pharmacy Sales Data Warehouse

CREATE TABLE fact_sales_table (
    fact_id INT AUTO_INCREMENT PRIMARY KEY,
    january_id INT,
    february_id INT,
    march_id INT,
    april_id INT,
    may_id INT,
    
    FOREIGN KEY (january_id) REFERENCES january_sales(january_id),
    FOREIGN KEY (february_id) REFERENCES february_sales(february_id),
    FOREIGN KEY (march_id) REFERENCES march_sales(march_id),
    FOREIGN KEY (april_id) REFERENCES april_sales(april_id),
    FOREIGN KEY (may_id) REFERENCES may_sales(may_id)
);