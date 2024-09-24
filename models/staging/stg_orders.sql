WITH orders AS (
  SELECT
    orderID,
    customerID,
    employeeID,
    orderDate,
    requiredDate,
    shippedDate,
    shipperID,
    freight
  FROM {{ source('raw', 'orders') }}
)

SELECT *
FROM orders

