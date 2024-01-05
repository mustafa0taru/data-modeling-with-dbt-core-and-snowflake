-- models/staging/stg_products.sql

-- Set the materialization strategy for the model
{{ config(
  materialized='table'
) }}

-- Your transformation logic here, for example:
WITH products AS (
  SELECT
    productid,
    productname,
    categoryid,
    quantityperunit,
    unitprice
  FROM {{ source('raw', 'products') }}
)

SELECT *
FROM products
