WITH source AS (
  SELECT
    orderid,
    productid,
    SUM(unitprice * quantity * (1 - discount)) AS total_amount
  FROM {{ ref('stg_order_details') }}
  GROUP BY 1, 2
)

SELECT
  o.orderid,
  o.customerid,
  o.employeeid,
  o.orderdate,
  od.productid,
  od.total_amount,
  p.productname,
  c.categoryname
INTO {{ ref('facts_orders') }}
FROM {{ ref('stg_orders') }} o
JOIN order_details od ON o.orderid = od.orderid
JOIN {{ ref('stg_products') }} p ON od.productid = p.productid
JOIN {{ ref('stg_categories') }} c ON p.categoryid = c.categoryid




