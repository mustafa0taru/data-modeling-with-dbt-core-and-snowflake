WITH source AS (
  SELECT
    productid,
    productname,
    categoryid,
    quantityperunit,
    unitprice
  FROM {{ ref('stg_products') }}
)

SELECT *
FROM source
