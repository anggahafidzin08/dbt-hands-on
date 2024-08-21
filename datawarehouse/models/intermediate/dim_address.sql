{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('address')}}

-- ALTER TABLE datawarehouse.dim_address
-- ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);