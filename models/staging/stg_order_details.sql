WITH order_details AS (
  SELECT
    orderid,
    productid,
    unitprice,
    quantity,
    discount
  FROM {{ source('raw','order_details') }}
)

SELECT *
FROM order_details
