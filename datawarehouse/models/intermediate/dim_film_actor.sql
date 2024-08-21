{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('film_actor')}}

-- ALTER TABLE datawarehouse.dim_film_actor
-- ADD CONSTRAINT film_actor_pkey PRIMARY KEY (actor_id, film_id),
-- ADD CONSTRAINT film_actor_actor_id_fkey FOREIGN KEY (actor_id) REFERENCES datawarehouse.dim_actor(actor_id) ON DELETE RESTRICT ON UPDATE CASCADE,
-- ADD CONSTRAINT film_actor_film_id_fkey FOREIGN KEY (film_id) REFERENCES datawarehouse.dim_film(film_id) ON DELETE RESTRICT ON UPDATE CASCADE;
