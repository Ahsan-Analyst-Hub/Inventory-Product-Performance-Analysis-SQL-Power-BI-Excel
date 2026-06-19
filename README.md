# Inventory & Product Performance Analysis | SQL, Power BI & Excel
<img width="1024" height="1024" alt="Image" src="https://github.com/user-attachments/assets/629d3ea8-032d-4ac6-a83c-ad93cf355ea4" />

## Project Overview

This project analyzes inventory performance, product demand, revenue generation, returns, exchanges, and stock write-offs using SQL, Power BI, and Excel. The objective was to transform raw inventory and product data into actionable business insights that support inventory planning, product management, stock replenishment, and profitability improvement.

## Dataset

The project began with two separate datasets:

### Product Dataset

* Product_ID
* Product_Name
* Unit_Price

### Inventory Dataset

* Order_Date
* Product_ID
* Availability
* Demand
* Refund
* Exchange
* Write_Off

These datasets were combined to create a single analytical dataset called **Full Inventory**, which served as the foundation for all subsequent analysis and dashboard development.

## Data Engineering & Preparation

### SQL Data Integration

The initial stage of the project was completed using SQL.

Key activities included:

* Importing and validating both source datasets
* Reviewing data quality and structure
* Checking for duplicate records
* Identifying missing or inconsistent values
* Standardizing column formats and data types
* Joining Product and Inventory tables using Product_ID
* Creating a consolidated **Full Inventory** dataset for analysis

Example business logic applied:

* Product details were merged with inventory transactions
* Unit prices were linked to demand and stock movement records
* A unified dataset was prepared for reporting and KPI calculations

## Exploratory Data Analysis (EDA)

Before dashboard development, exploratory analysis was conducted using SQL to understand the data and identify patterns.

EDA activities included:

* Product demand analysis
* Revenue estimation by product
* Refund and exchange analysis
* Inventory write-off investigation
* Product-level performance comparisons
* Time-series demand analysis
* Data completeness and consistency checks

The findings from the EDA informed the design of the dashboard and KPI selection.

## Business Questions

The dashboard was designed to answer the following key business questions:

* Which products have the highest demand?
* Which products generate the most revenue?
* Which products suffer the highest refund rates?
* Which products are frequently exchanged?
* How much revenue is lost through refunds?
* How much inventory is written off?
* Are stock levels sufficient to meet demand?
* Which products should be reordered more frequently?
* Which products should be discontinued due to low demand and high write-offs?
* How does demand vary by month or season?

## Power BI Development

The cleaned and integrated Full Inventory dataset was imported into Power BI.

### Data Modeling

* Date hierarchy creation
* DAX measure development
* KPI calculations
* Dashboard layout and visual design

### Key DAX Measures

* Total Demand
* Total Revenue
* Net Revenue
* Availability Rate
* Refund Rate
* Exchange Rate
* Write-Off Cost
* Demand Gap
* Write-Off Rate
* Top Product

### Dashboard Features

* Executive KPI Summary
* Product Demand Analysis
* Revenue Performance Analysis
* Refund & Exchange Monitoring
* Inventory Availability Tracking
* Reorder Priority Identification
* Product Discontinuation Analysis
* Monthly Demand Trend Analysis

### Dashboard 01
<img width="640" height="361" alt="Image" src="https://github.com/user-attachments/assets/3e19e224-5866-4d57-99de-304bd9008bce" />

### Dashboard 02
<img width="639" height="360" alt="Image" src="https://github.com/user-attachments/assets/60a1dd6e-eaef-45b2-9dc0-e8e864ca1581" />

### Dashboard 03
<img width="639" height="361" alt="Image" src="https://github.com/user-attachments/assets/08acd6f6-57ee-4f91-87a7-6df2d48d94eb" />

### Dashboard 04
<img width="641" height="361" alt="Image" src="https://github.com/user-attachments/assets/e8e52376-ebd8-4882-bdd8-7cf6586dccaf" />


## Excel Analysis

Following Power BI development, the Full Inventory dataset was also analyzed in Excel to validate calculations and support additional ad-hoc analysis.

Techniques used included:

* Pivot Tables
* Pivot Charts
* Conditional Formatting
* Product Performance Summaries
* Trend Analysis
<img width="480" height="368" alt="Image" src="https://github.com/user-attachments/assets/383e2fa3-40d3-4f38-8e4a-abd77d1a7448" />

## Project Workflow
<img width="1691" height="624" alt="Image" src="https://github.com/user-attachments/assets/29ace5b0-f435-4258-940f-5439bee67e45" />

## Tools Used

* SQL Server
* Power BI
* Power Query
* DAX
* Microsoft Excel

## Key Insights

This analysis enables stakeholders to:

* Identify top-performing products
* Detect products with excessive refunds and exchanges
* Monitor stock availability against demand
* Reduce financial losses caused by write-offs
* Improve inventory replenishment decisions
* Optimize product portfolios
* Understand seasonal demand patterns

## Repository Contents

* SQL Scripts
* Full Inventory Dataset
* Power BI Report (.pbix)
* Excel Analysis Workbook
* Dashboard Screenshots
* README.md

## Author

Ahsan ul Haq
