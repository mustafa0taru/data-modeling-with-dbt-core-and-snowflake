-- models/staging/stg_employees.sql

-- Set the materialization strategy for the model
{{ config(
  materialized='table',
) }}

-- Your transformation logic here, for example:
WITH employees AS (
  SELECT
    employeeid,
    employeename,
    title,
    city,
    country,
    reportsto
  FROM {{ source('raw', 'employees') }}
)

SELECT *
FROM employees
