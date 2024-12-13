{{ config(materialized='table') }}

-- Use the `ref` function to select from other models

select VendorID, 
pickup_datetime, 
dropoff_datetime, 
passenger_email, 
driver_email, 
trip_distance,
PULocationID,
fare_amount,
passenger_credit_card,
Payment_type

from {{ source("taxitrip_dev_ingest_dev", "taxitrips_dlt_gold") }}
-- where request_datetime between '2024-01-01' and '2024-12-31'
limit 100
