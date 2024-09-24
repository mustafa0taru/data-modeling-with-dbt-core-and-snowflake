
WITH source AS (
  SELECT
    shipperid,
    companyname
  FROM {{ ref('stg_shippers') }}
)

SELECT *
FROM source
