-- models/staging/stg_categories.sql
{{ config(
  materialized='table'
) }}

-- Your transformation logic here, for example:
WITH categories AS (
  SELECT
    "CATEGORYID" as categoryid,
    "CATEGORYNAME" as categoryname,
    "DESCRIPTION" as description
  FROM {{ source('raw', 'categories') }}
)

SELECT *
FROM categories
