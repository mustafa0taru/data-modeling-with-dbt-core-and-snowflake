-- models/staging/stg_shippers.sql

-- Set the materialization strategy for the model
{{ config(
  materialized='table'
) }}

-- Your transformation logic here, for example:
WITH shippers AS (
  SELECT
    "SHIPPERID" as shipperid,
    "COMPANYNAME" as companyname
  FROM {{ source('raw','shippers') }}
)

SELECT *
FROM shippers
