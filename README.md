# Data Modeling with dbt Core and Snowflake
This project implements a complete data model for an e-commerce dataset using dbt Core and Snowflake. It transforms raw CSV data into a well-structured, analytics-ready model within two Snowflake databases: raw and analytics. 

## The purpose;
- Transform raw CSV data into a well-structured, analytics-ready model accessible in Snowflake.

- Enable efficient querying and analysis of e-commerce metrics like sales trends, customer behavior, and product performance.

- Provide a foundation for building dashboards, reports, and further analytical models.

## Key features include:

- Stage area: Transforms and cleans raw data before loading into dimensions and facts.
- Dimensional tables: Stores normalized attributes for customers, products, categories, shippers, and employees.
- Fact tables: Aggregates sales data from orders and order details for analysis.
- dbt Core: Automates model development, testing, and deployment for reliable data pipelines.


![Screenshot 2024-01-05 043948](https://github.com/mustafa0taru/data_modeling_with_dbt_Core_and_Snowflake/assets/81088966/bcfbf5c3-270c-48b1-8e03-2c6dfdd14665)
               _The Data Lineage generated_

