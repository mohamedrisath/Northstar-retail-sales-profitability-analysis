-- 02_data_cleaning.sql
-- Converts raw imported text fields into analysis-ready data types.

DROP TABLE IF EXISTS sales_clean;

CREATE TABLE sales_clean AS
SELECT
    row_id::INTEGER AS row_id,
    order_id,
    TO_DATE(order_date, 'MM/DD/YYYY') AS order_date,
    TO_DATE(ship_date, 'MM/DD/YYYY') AS ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales::NUMERIC AS sales,
    quantity::INTEGER AS quantity,
    discount::NUMERIC AS discount,
    profit::NUMERIC AS profit
FROM sales_raw;
