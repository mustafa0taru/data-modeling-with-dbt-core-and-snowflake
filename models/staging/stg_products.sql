WITH products AS (
  SELECT
    productid,
    productname,
    categoryid,
    quantityperunit as qty_per_unit,
    unitprice
  FROM {{ source('raw', 'products') }}
)

SELECT *
FROM products
