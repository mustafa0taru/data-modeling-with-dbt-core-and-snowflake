
WITH source AS (
  SELECT
    "SHIPPERID" as shipperid,
    "COMPANYNAME" as companyname
  FROM {{ ref('stg_shippers') }}
)

SELECT *
FROM source
