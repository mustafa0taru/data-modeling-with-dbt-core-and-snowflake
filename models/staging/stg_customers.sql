WITH customers AS (
  SELECT
    customerID,
    companyName,
    contactName,
    contactTitle,
    city,
    country
  FROM {{ source('raw', 'customers') }}
)

SELECT *
FROM customers
