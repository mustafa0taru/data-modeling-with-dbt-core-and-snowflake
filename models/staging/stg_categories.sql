-- models/staging/stg_categories.sql
{{ config(
  materialized='table'
) }}

WITH categories AS (
  SELECT
    categoryid as category_id,
    categoryname as category_name,
    description
  FROM {{ source('raw', 'categories') }}
)

SELECT *
FROM categories
