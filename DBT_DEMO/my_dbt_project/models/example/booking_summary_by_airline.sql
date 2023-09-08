WITH booking_summary AS (
  SELECT
    AIRLINE,
    COUNT(*) AS total_bookings,
    AVG(BOOKINGPRICE) AS avg_price,
    SUM(WEIGHTOFLUGGAGE) AS total_luggage_weight
  FROM TEST_TABLE
  GROUP BY AIRLINE
)
SELECT * FROM booking_summary
ORDER BY total_bookings DESC