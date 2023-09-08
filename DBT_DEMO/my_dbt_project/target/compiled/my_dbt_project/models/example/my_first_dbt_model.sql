/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



-- Create a CTE that mimics your source data
with source_data as (
    select
        'UA' as AIRLINE,
        3516 as FLIGHTCONNECTION,
        '2019-04-06' as FLIGHTDATE,
        13284 as BOOKNUMBER,
        1496 as CUSTOMER,
        104 as TRAVELAGENCY,
        2019 as CALENDARYEAR,
        4 as CALENDARMONTH,
        'ES' as CUSTOMERCOUNTRY,
        'Barcelona' as CUSTOMERCITY,
        23.9 as WEIGHTOFLUGGAGE,
        'KG' as WEIGHTUOM,
        632.7 as BOOKINGPRICE,
        'EUR' as CURRENCY,
        '2023-08-22 09:41:00' as DBX_TIMESTAMP,
        87785 as DBX_SEQUENCE_NUMBER
    union all
    select
        'SQ', 2, '2019-03-07', 3035, 1489, 297, 2019, 3, 'DE', 'Neuss', 24.0, 'KG', 1157.61, 'USD', '2023-08-22 09:41:00', 71230
    -- Add more rows here...
)

-- Perform any transformations needed on the source data
select
    *
from source_data
-- Uncomment below to filter out null FLIGHTCONNECTION
-- where FLIGHTCONNECTION is not null