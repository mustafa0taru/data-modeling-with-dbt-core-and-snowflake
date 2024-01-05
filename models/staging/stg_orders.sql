-- models/staging/stg_orders.sql

-- Set the materialization strategy for the model
{{ config(
  materialized='table'
) }}

-- Your transformation logic here, for example:
WITH orders AS (
  SELECT
    orderID,
    customerID,
    employeeID,
    orderDate,
    requiredDate,
    shippedDate,
    shipperID,
    freight
  FROM {{ source('raw', 'orders') }}
)

SELECT *
FROM orders

