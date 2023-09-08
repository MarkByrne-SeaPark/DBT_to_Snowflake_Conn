-- models/dim_travel_agency.sql
WITH source AS (
    SELECT DISTINCT TRAVELAGENCY
    FROM TEST_TABLE
)
SELECT
    TRAVELAGENCY AS travel_agency_id
FROM source
