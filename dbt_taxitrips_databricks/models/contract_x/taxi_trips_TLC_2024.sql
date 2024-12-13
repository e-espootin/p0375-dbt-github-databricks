{{ config(materialized='table') }}

-- Use the `ref` function to select from other models

select VendorID, pickup_datetime--, dropoff_datetime
from {{ source("taxitrip_dev_ingest_dev", "taxitrips_dlt_gold") }}
-- where request_datetime between '2024-01-01' and '2024-12-31'
limit 100
