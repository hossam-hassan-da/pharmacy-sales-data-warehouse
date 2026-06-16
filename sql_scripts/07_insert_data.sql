-- Insert sample data into Fact Table
-- This creates a linking structure for analytics
-- Part of Pharmacy Sales Data Warehouse

INSERT INTO fact_sales_table (january_id, february_id, march_id, april_id, may_id)
WITH RECURSIVE number_series AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1 FROM number_series WHERE num < 5000
)
SELECT /*+ SET_VAR(cte_max_recursion_depth = 5005) */ num, num, num, num, num
FROM number_series;