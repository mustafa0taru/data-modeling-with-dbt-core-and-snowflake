-- models/staging/stg_order_details.sql

-- Set the materialization strategy for the model
{{ config(
  materialized='table'
) }}

-- Your transformation logic here, for example:
WITH order_details AS (
  SELECT
    "ORDERID" as orderid,
    "PRODUCTID" as productid,
    "UNITPRICE" as unitprice,
    "QUANTITY" as quantity,
    "DISCOUNT" as discount
  FROM {{ source('raw','order_details') }}
)

SELECT *
FROM order_details
