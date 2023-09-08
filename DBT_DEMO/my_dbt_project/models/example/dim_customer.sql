-- models/dim_customer.sql
WITH source AS (
    SELECT DISTINCT CUSTOMER, CUSTOMERCOUNTRY, CUSTOMERCITY
    FROM TEST_TABLE
)
SELECT
    CUSTOMER AS customer_id,
    CUSTOMERCOUNTRY AS customer_country,
    CUSTOMERCITY AS customer_city
FROM source
