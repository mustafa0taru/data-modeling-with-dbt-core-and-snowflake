WITH shippers AS (
  SELECT
    shipperid,
    companyname
  FROM {{ source('raw','shippers') }}
)

SELECT *
FROM shippers
