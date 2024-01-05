
-- Your transformation logic here, for example:
WITH source AS (
  SELECT
    "ORDERID" as orderid,
    "PRODUCTID" as productid,
    "UNITPRICE" as unitprice,
    "QUANTITY" as quantity,
    "DISCOUNT" as discount
  FROM {{ ref('stg_order_details') }}
)

SELECT *
FROM source