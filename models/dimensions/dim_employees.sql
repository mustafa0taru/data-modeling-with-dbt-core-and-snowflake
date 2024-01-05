WITH source AS (
  SELECT
    "EMPLOYEEID" as employeeid,
    "EMPLOYEENAME" as employeename,
    "TITLE" as title,
    "CITY" as city,
    "COUNTRY" as country,
    "REPORTSTO" as reportsto
  FROM {{ ref('stg_employees') }}
)

SELECT *
FROM source
