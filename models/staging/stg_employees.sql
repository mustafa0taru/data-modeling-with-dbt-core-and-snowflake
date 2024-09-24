WITH employees AS (
  SELECT
    employeeid as employee_id,
    employeename,
    title,
    city,
    country,
    reportsto
  FROM {{ source('raw', 'employees') }}
)

SELECT *
FROM employees
