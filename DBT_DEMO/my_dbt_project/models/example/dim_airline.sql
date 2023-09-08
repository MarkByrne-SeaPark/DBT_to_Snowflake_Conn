-- models/dim_airline.sql
WITH source AS (
    SELECT DISTINCT AIRLINE
    FROM TEST_TABLE
)
SELECT
    AIRLINE AS airline_code
FROM source
