WITH source AS (
  SELECT
    "CUSTOMERID" as customerid,
    "COMPANYNAME" as companyname,
    "CONTACTNAME" as contactname,
    "CONTACTTITLE" as contacttitle,
    "CITY" as city,
    "COUNTRY" as country
  FROM {{ ref('stg_customers') }}
)

SELECT *
FROM source
