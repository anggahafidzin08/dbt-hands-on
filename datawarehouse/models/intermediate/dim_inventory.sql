{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('inventory')}}

-- ALTER TABLE datawarehouse.dim_inventory
-- ADD CONSTRAINT inventory_pkey PRIMARY KEY (inventory_id),
-- ADD CONSTRAINT inventory_film_id_fkey FOREIGN KEY (film_id) REFERENCES datawarehouse.dim_film(film_id) ON DELETE RESTRICT ON UPDATE CASCADE;