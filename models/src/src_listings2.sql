with raw_listings as (select * from {{ source("airbnb", "listings") }})
select
    id as listing_id, name as listing_name, price as price_str, listing_url, room_type,
from raw_listings minimum_nights, host_id, created_at, updated_at
