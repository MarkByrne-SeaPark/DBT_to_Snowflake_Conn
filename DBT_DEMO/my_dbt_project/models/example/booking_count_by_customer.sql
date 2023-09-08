-- models/booking_count_by_customer.sql

SELECT
  CUSTOMER,
  COUNT(*) AS total_bookings
FROM TEST_TABLE
GROUP BY CUSTOMER
ORDER BY total_bookings DESC
