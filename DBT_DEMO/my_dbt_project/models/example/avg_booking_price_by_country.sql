-- models/avg_booking_price_by_country.sql

WITH avg_price_by_country AS (
  SELECT
    CUSTOMERCOUNTRY,
    AVG(BOOKINGPRICE) AS avg_price
  FROM TEST_TABLE
  GROUP BY CUSTOMERCOUNTRY
)
SELECT * FROM avg_price_by_country
ORDER BY avg_price DESC
