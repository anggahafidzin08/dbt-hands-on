{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('actor')}}

-- ALTER TABLE datawarehouse.dim_actor
-- ADD CONSTRAINT actor_pkey PRIMARY KEY (actor_id)