-- 03_kpi_analysis.sql
-- Northstar Retail Ltd.
-- Core business KPIs, regional performance and category performance.


-- 1. Overall Business KPIs

SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / SUM(sales)) * 100,
        2
    ) AS profit_margin_percentage,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_units_sold,
    ROUND(
        SUM(sales) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM sales_clean;


-- 2. Regional Performance

SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / SUM(sales)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_clean
GROUP BY region
ORDER BY total_profit DESC;


-- 3. Category Performance

SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / SUM(sales)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_clean
GROUP BY category
ORDER BY total_sales DESC;
