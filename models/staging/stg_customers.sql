WITH customers AS (
  SELECT
    customerID as id,
    companyName as startup,
    contactName as username,
    contactTitle,
    city,
    state,
    country
  FROM {{ source('raw', 'customers') }}
)

SELECT *
FROM customers
