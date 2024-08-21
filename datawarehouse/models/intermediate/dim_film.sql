{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('film')}}

-- ALTER TABLE datawarehouse.dim_film
-- ADD CONSTRAINT film_pkey PRIMARY KEY (film_id);