# Retail Sales Analytics Pipeline and Dashboard

## Overview

This project focuses on building a retail analytics system that simulates a real world data pipeline using **SQL**, **Azure services**, and **Power BI**. The goal was not just to analyze sales data, but to design a scalable data flow similar to what is used in production environments.

## Architecture and Data Flow

The data originates from multiple sources including **SQL databases** and **API sources**. Using **Azure Data Factory** concepts, data is ingested into **Azure Data Lake Storage**, where it is stored in a centralized and scalable format. **Azure Databricks** is then used as the processing layer to transform and prepare the data for analysis.

## Medallion Architecture

The data pipeline follows a layered approach to improve data quality and usability.

In the **Bronze layer**, raw data is stored without modification.  
In the **Silver layer**, the data is cleaned, joined, and validated using SQL transformations.  
In the **Gold layer**, business level aggregations are created such as total sales, product performance, and store level metrics.

This structure ensures that the data is reliable, easy to trace, and ready for analysis.

## Dashboard and Insights

The final transformed data is used to build a **Power BI dashboard** that presents insights in a clear and interactive way. The dashboard shows sales trends over time, product category contribution, top selling products, and regional performance across stores and customers.

This helps in identifying patterns, understanding performance, and supporting business decisions.

## Data Model

The project uses a relational data model with three main tables: **products**, **stores**, and **transactions**. These tables are connected using primary and foreign keys to reflect real retail operations.

**SQL** is used extensively to join, transform, and aggregate the data before it is used for reporting.

## Final Thoughts

This project reflects how modern data systems are built, combining data engineering and analytics to deliver reliable and scalable business insights.
