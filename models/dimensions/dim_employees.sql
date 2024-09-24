WITH source AS (
  SELECT
    employeeid,
    employeename,
    title,
    city,
    country,
    reportsto
  FROM {{ ref('stg_employees') }}
)

SELECT *
FROM source
