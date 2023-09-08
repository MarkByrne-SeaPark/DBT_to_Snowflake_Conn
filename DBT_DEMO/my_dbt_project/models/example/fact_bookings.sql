-- models/fact_bookings.sql
WITH source AS (
    SELECT * FROM TEST_TABLE
)
SELECT
    BOOKNUMBER AS booking_id,
    FLIGHTCONNECTION AS flight_connection,
    FLIGHTDATE AS flight_date,
    CUSTOMER AS customer_id,
    TRAVELAGENCY AS travel_agency_id,
    CALENDARYEAR AS calendar_year,
    CALENDARMONTH AS calendar_month,
    WEIGHTOFLUGGAGE AS weight_of_luggage,
    BOOKINGPRICE AS booking_price,
    CURRENCY AS currency
FROM source
