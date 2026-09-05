-- 04_product_profitability.sql
-- Northstar Retail Ltd.
-- Product-level and Furniture profitability analysis.


-- 1. Furniture Sub-Category Performance

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percentage
FROM sales_clean
WHERE category = 'Furniture'
GROUP BY sub_category
ORDER BY total_profit ASC;


-- 2. Furniture Profitability by Discount Band

SELECT
    CASE
        WHEN discount = 0 THEN 'No Discount'
        WHEN discount <= 0.10 THEN '1-10%'
        WHEN discount <= 0.20 THEN '11-20%'
        WHEN discount <= 0.30 THEN '21-30%'
        WHEN discount <= 0.40 THEN '31-40%'
        ELSE 'Above 40%'
    END AS discount_band,
    COUNT(*) AS transactions,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        (SUM(profit) / SUM(sales)) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_clean
WHERE category = 'Furniture'
GROUP BY discount_band
ORDER BY MIN(discount);


-- 3. Tables Performance by Region

SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percentage
FROM sales_clean
WHERE sub_category = 'Tables'
GROUP BY region
ORDER BY total_profit ASC;


-- 4. Top 10 Loss-Making Furniture Products

SELECT
    product_name,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount) * 100, 2) AS average_discount_percentage
FROM sales_clean
WHERE category = 'Furniture'
GROUP BY product_name, sub_category
HAVING SUM(profit) < 0
ORDER BY total_profit ASC
LIMIT 10;
