-- 05_sales_growth.sql
-- Northstar Retail Ltd.
-- Yearly and monthly sales growth analysis.


-- 1. Yearly Sales and Profit

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_clean
GROUP BY EXTRACT(YEAR FROM order_date)
ORDER BY year;


-- 2. Year-over-Year Sales and Profit Growth

WITH yearly_performance AS (
    SELECT
        EXTRACT(YEAR FROM order_date) AS year,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit
    FROM sales_clean
    GROUP BY EXTRACT(YEAR FROM order_date)
)

SELECT
    year,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(total_profit, 2) AS total_profit,

    ROUND(
        (
            total_sales
            - LAG(total_sales) OVER (ORDER BY year)
        )
        /
        LAG(total_sales) OVER (ORDER BY year)
        * 100,
        2
    ) AS sales_growth_percentage,

    ROUND(
        (
            total_profit
            - LAG(total_profit) OVER (ORDER BY year)
        )
        /
        LAG(total_profit) OVER (ORDER BY year)
        * 100,
        2
    ) AS profit_growth_percentage

FROM yearly_performance
ORDER BY year;


-- 3. Monthly Sales and Profit Trend

SELECT
    DATE_TRUNC('month', order_date)::DATE AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM sales_clean
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;


-- 4. Monthly Sales Growth

WITH monthly_performance AS (
    SELECT
        DATE_TRUNC('month', order_date)::DATE AS month,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit
    FROM sales_clean
    GROUP BY DATE_TRUNC('month', order_date)
)

SELECT
    month,
    ROUND(total_sales, 2) AS total_sales,
    ROUND(total_profit, 2) AS total_profit,

    ROUND(
        (
            total_sales
            - LAG(total_sales) OVER (ORDER BY month)
        )
        /
        LAG(total_sales) OVER (ORDER BY month)
        * 100,
        2
    ) AS monthly_sales_growth_percentage

FROM monthly_performance
ORDER BY month;
