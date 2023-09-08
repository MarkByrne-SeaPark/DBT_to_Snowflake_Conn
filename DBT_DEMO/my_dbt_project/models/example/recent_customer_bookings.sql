-- models/recent_customer_bookings.sql

WITH recent_bookings AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY CUSTOMER ORDER BY FLIGHTDATE DESC) AS rn
  FROM TEST_TABLE
)
SELECT *
FROM recent_bookings
WHERE rn = 1
