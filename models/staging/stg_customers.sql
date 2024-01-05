-- models/staging/stg_customers.sql

-- Set the materialization strategy for the model
{{ config(
  materialized='table',
  database='raw',
  schema='ecommerce'
) }}

-- Your transformation logic here, for example:
WITH customers AS (
  SELECT
    customerID,
    companyName,
    contactName,
    contactTitle,
    city,
    country
  FROM {{ source('raw', 'customers') }}
)

SELECT *
FROM customers
