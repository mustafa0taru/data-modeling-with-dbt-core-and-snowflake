# Data Modeling with dbt Core and Snowflake
This project implements a complete data model for an e-commerce dataset using dbt Core and Snowflake. It transforms raw CSV data into a well-structured, analytics-ready model within two Snowflake databases: raw and analytics. 

## The purpose;
- Transform raw CSV data into a well-structured, analytics-ready model accessible in Snowflake.

- Enable efficient querying and analysis of e-commerce metrics like sales trends, customer behavior, and product performance.

- Provide a foundation for building dashboards, reports, and further analytical models.

## The architechture
![Untitled](https://github.com/mustafa0taru/data_modeling_with_dbt_Core_and_Snowflake/assets/81088966/6e7ebadc-4779-4273-bdf1-17a4764e85f5)

## Key features include:
- Stage area: Transforms and cleans raw data before loading into dimensions and facts.
![staging](https://github.com/mustafa0taru/data_modeling_with_dbt_Core_and_Snowflake/assets/81088966/93592da2-327e-4b60-aa60-e44c0a47e6f2)
- Dimensional tables: Stores normalized attributes for customers, products, categories, shippers, and employees.
- Fact tables: Aggregates sales data from orders and order details for analysis.
![analytics](https://github.com/mustafa0taru/data_modeling_with_dbt_Core_and_Snowflake/assets/81088966/97d665ed-1516-4376-94e8-29f043e1d4b0)

- dbt Core: Automates model development, testing, and deployment for reliable data pipelines.

## The tables and ERP Diagram generated
- Orders
- Orders details
- Customers
- Employees
- Products
- Categories
- Shippers
![ERP Diagram](https://github.com/mustafa0taru/data_modeling_with_dbt_Core_and_Snowflake/assets/81088966/2cd1f422-b75f-4155-b290-e649876fddc1)
  ERP Diagram

## The Data Lineage Generated
![Screenshot 2024-01-05 043948](https://github.com/mustafa0taru/data_modeling_with_dbt_Core_and_Snowflake/assets/81088966/bcfbf5c3-270c-48b1-8e03-2c6dfdd14665)
              

### Documentation:
- Model descriptions and documentation can be found in the models directory.
- For general dbt documentation, refer to https://docs.getdbt.com/.
