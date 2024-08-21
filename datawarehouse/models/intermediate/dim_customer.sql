{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('customer')}}

-- ALTER TABLE datawarehouse.dim_customer
-- ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id),
-- ADD CONSTRAINT customer_address_id_fkey FOREIGN KEY (address_id) REFERENCES datawarehouse.dim_address(address_id) ON DELETE RESTRICT ON UPDATE CASCADE;