WITH source AS (
  SELECT
    customerid,
    companyname,
    contactname,
    contacttitle,
    city,
    country
  FROM {{ ref('stg_customers') }}
)

SELECT *
FROM source
