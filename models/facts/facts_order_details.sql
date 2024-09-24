WITH source AS (
  SELECT
    orderid,
    productid,
    unitprice,
    quantity,
    discount,
    unitprice * quantity * (1 - discount) AS total_price
  FROM {{ ref('stg_order_details') }}
)

SELECT
  orderid,
  productid,
  unitprice,
  quantity,
  discount,
  total_price,
  CASE WHEN quantity > 10 THEN 'Bulk Order' ELSE 'Regular Order' END AS order_type
FROM source
WHERE total_price > 1000
ORDER BY total_price DESC;