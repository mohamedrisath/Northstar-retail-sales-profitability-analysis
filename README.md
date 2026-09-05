# Northstar Retail Ltd. — Sales & Profitability Analytics Case Study

## Project Type
Simulated Client Consulting Project

## Role
Business Analytics Consultant

## Tools Used
- PostgreSQL
- SQL
- Power BI
- DAX
- Excel

---

## Project Overview

Northstar Retail Ltd. is a simulated retail business operating across multiple US regions.

Management wanted to understand why profitability was uneven despite strong sales performance and continued business growth.

The objective of this project was to analyse sales, profit, product performance, regional performance, customer segments, and discounting behaviour in order to identify the main drivers of profitability and provide actionable business recommendations.

The project used a retail dataset containing **10,194 transaction records**.

---

## Business Problem

The management team had access to sales transaction data but lacked a clear view of:

- Overall sales and profitability
- Regional performance
- Product and category profitability
- Loss-making products
- Impact of discounting on profit
- Year-over-year business growth
- Customer segment performance
- Areas requiring management intervention

The goal was to convert raw transactional data into a decision-support dashboard.

---

## Business Questions

The analysis focused on the following questions:

1. How much sales and profit is the business generating?
2. Which regions perform best and worst?
3. Which product categories generate the highest revenue?
4. Which categories and products are reducing profitability?
5. How does discounting affect profit margins?
6. Which products are generating losses?
7. How has sales performance changed year over year?
8. Which states contribute the most revenue?
9. Which customer segments generate the most sales and profit?
10. What actions can management take to improve profitability?

---

# Data Preparation

The original dataset was imported into PostgreSQL as a raw table.

A separate cleaned table was then created to:

- Convert date fields into proper date formats
- Convert sales and profit values into numeric fields
- Convert quantity into integer format
- Preserve the original raw dataset
- Prepare the data for analysis and Power BI reporting

The final analytical table contained **10,194 records**.

---

# SQL Analysis

SQL was used to explore and analyse the dataset before dashboard development.

The analysis included:

- Total sales
- Total profit
- Total orders
- Average order value
- Units sold
- Regional performance
- Category performance
- Sub-category profitability
- Loss-making products
- Discount analysis
- Monthly sales trends
- Year-over-year growth
- Product-level root-cause analysis

SQL techniques used included:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `COUNT`
- `SUM`
- `AVG`
- `MIN`
- `MAX`
- `DISTINCT`
- `CASE WHEN`
- `HAVING`
- Common Table Expressions
- `LAG()`
- Window functions
- Date functions

---

# Key Business KPIs

| KPI | Result |
|---|---:|
| Total Sales | $2.33M |
| Total Profit | $292.30K |
| Profit Margin | 12.56% |
| Total Orders | 5,111 |
| Units Sold | 38,654 |
| Average Order Value | $455.20 |

---

# Power BI Dashboard

The final Power BI dashboard contains three analytical pages.

## Page 1 — Executive Sales Overview

Provides management with a high-level view of business performance.

Includes:

- Total Sales
- Total Profit
- Profit Margin
- Total Orders
- Units Sold
- Average Order Value
- Monthly Sales Trend
- Sales by Region
- Sales and Profit by Category
- Region, Year, and Category filters

### Dashboard Screenshot

![Executive Overview](dashboard/page1_executive_overview.png)

---

## Page 2 — Product & Profitability Analysis

Focuses on identifying the causes of low profitability within the Furniture category.

Includes:

- Profit by Furniture Sub-Category
- Profit Margin by Discount Band
- Top 10 Loss-Making Furniture Products
- Tables Profit and Discount by Region
- Key Insights
- Recommended Actions

### Dashboard Screenshot

![Product Profitability](dashboard/page2_profitability_analysis.png)

---

## Page 3 — Sales Growth & Regional Performance

Focuses on business growth, geographical performance, and customer segments.

Includes:

- YoY Sales Growth
- YoY Profit Growth
- Sales and Profit by Year
- Profit Margin by Region
- Top States by Sales
- Sales and Profit by Customer Segment

### Dashboard Screenshot

![Growth Regional Performance](dashboard/page3_growth_regional_performance.png)

---

# Key Findings

## 1. Strong Overall Business Performance

The business generated approximately:

- **$2.33M in total sales**
- **$292.30K in total profit**
- **12.56% overall profit margin**

---

## 2. West Was the Strongest Region

The West region generated approximately:

- **$739.8K sales**
- **$110.8K profit**
- **14.98% profit margin**

It was the strongest region in both sales and profitability.

---

## 3. Central Had the Lowest Regional Margin

Central generated approximately **$503K in sales**, but its profit margin was only around **7.92%**.

This suggests a profitability issue rather than simply weak sales volume.

---

## 4. Furniture Was the Main Profitability Concern

Furniture generated approximately:

- **$754.7K in sales**
- Only **$19.7K in profit**
- Approximately **2.61% profit margin**

This was significantly lower than Technology and Office Supplies.

---

## 5. Tables and Bookcases Were Loss-Making

Within Furniture:

- Tables generated approximately **-$17.8K profit**
- Bookcases generated approximately **-$3.6K profit**

Tables were identified as the largest profitability problem.

---

## 6. Higher Discounts Were Associated With Lower Profitability

Furniture profitability declined significantly as discount levels increased.

| Discount Band | Profit Margin |
|---|---:|
| No Discount | 22.86% |
| 1–10% | 15.21% |
| 11–20% | 3.20% |
| 21–30% | -10.77% |
| 31–40% | -30.91% |
| Above 40% | -70.84% |

Furniture transactions became loss-making overall once discounts exceeded approximately **20%**.

---

## 7. East Was the Biggest Concern for Tables

Tables in the East region generated approximately:

- **-$11.1K profit**
- Approximately **35.9% average discount**

In comparison, West remained slightly profitable for Tables while maintaining lower average discount levels.

---

## 8. Strong Sales Growth

Year-over-year sales growth was:

| Year | Sales Growth |
|---|---:|
| 2024 | -4.26% |
| 2025 | +29.80% |
| 2026 | +21.44% |

2026 generated approximately:

- **$745.6K sales**
- **$95.9K profit**
- **21.44% YoY sales growth**
- **16.04% YoY profit growth**

---

# Business Recommendations

Based on the analysis, the following actions were recommended.

### 1. Introduce Furniture Discount Controls

Review Furniture discounts above approximately **20%** and introduce approval thresholds for large discounts.

### 2. Review Tables and Bookcases Pricing

Investigate:

- Product pricing
- Supplier costs
- Promotional strategy
- Product-level margins

for Tables and Bookcases.

### 3. Prioritise the East Region

Conduct a profitability review of Tables within the East region due to high discounts and significant losses.

### 4. Investigate Central Region Margin Leakage

Analyse product mix, discount levels, and loss-making products within Central to understand why sales are not converting into stronger profit.

### 5. Protect High-Margin Categories

Continue supporting Technology and Office Supplies, which demonstrated significantly stronger profitability.

### 6. Use Growth Trends for Planning

Use strong sales growth and late-year demand to improve:

- Inventory planning
- Staffing
- Promotional timing
- Product availability

---

# Skills Demonstrated

## Data Analysis
- Data exploration
- KPI development
- Trend analysis
- Root-cause analysis
- Profitability analysis
- Segmentation
- Business interpretation

## SQL
- Data cleaning
- Aggregation
- Filtering
- Grouping
- CTEs
- Window functions
- Date analysis
- Product-level analysis

## Power BI
- DAX measures
- Calculated columns
- Interactive slicers
- KPI cards
- Bar charts
- Line charts
- Combo charts
- Top N analysis
- Secondary axes
- YoY calculations
- Dashboard design

## Business Analysis
- Business problem definition
- KPI identification
- Root-cause investigation
- Management reporting
- Recommendation development
- Translating data into business actions

---

# Project Conclusion

The analysis showed that Northstar Retail Ltd. was experiencing strong overall sales growth, but profitability varied significantly across products and regions.

Furniture represented the largest commercial concern, particularly Tables and Bookcases. Higher discount levels were strongly associated with declining profitability, while the East and Central regions showed areas requiring further management attention.

The final dashboard enabled management to monitor performance, identify profitability issues, investigate root causes, and make more informed commercial decisions.

---

## Note

Northstar Retail Ltd. is a fictional company created for this simulated client consulting case study. The project was developed for portfolio and learning purposes using a public retail dataset.
