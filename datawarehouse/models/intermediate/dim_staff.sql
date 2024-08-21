{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('staff')}}

-- ALTER TABLE datawarehouse.dim_staff
-- ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id),
-- ADD CONSTRAINT staff_address_id_fkey FOREIGN KEY (address_id) REFERENCES datawarehouse.dim_address(address_id) ON DELETE RESTRICT ON UPDATE CASCADE;