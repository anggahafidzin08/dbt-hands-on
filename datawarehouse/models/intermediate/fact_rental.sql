{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('rental')}}

-- ALTER TABLE datewarehouse.fact_rental
-- ADD CONSTRAINT rental_pkey PRIMARY KEY (rental_id)
-- ADD CONSTRAINT rental_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES datewarehouse.fact_customer(customer_id) ON DELETE RESTRICT ON UPDATE CASCADE,
-- ADD CONSTRAINT rental_inventory_id_fkey FOREIGN KEY (inventory_id) REFERENCES datewarehouse.fact_inventory(inventory_id) ON DELETE RESTRICT ON UPDATE CASCADE,
-- ADD CONSTRAINT rental_staff_id_key FOREIGN KEY (staff_id) REFERENCES datewarehouse.fact_staff(staff_id);

-- CREATE INDEX idx_fk_inventory_id ON datawarehouse.fact_rental USING btree (inventory_id);
-- CREATE UNIQUE INDEX idx_unq_rental_rental_date_inventory_id_customer_id ON datawarehouse.fact_rental USING btree (rental_date, inventory_id, customer_id);