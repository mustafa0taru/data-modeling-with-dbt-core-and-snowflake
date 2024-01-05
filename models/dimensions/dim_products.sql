WITH source AS (
  SELECT
    "PRODUCTID" as productid,
    "PRODUCTNAME" as productname,
    "CATEGORYID" as categoryid,
    "QUANTITYPERUNIT" as quantityperunit,
    "UNITPRICE" as unitprice
  FROM {{ ref('stg_products') }}
)

SELECT *
FROM source
