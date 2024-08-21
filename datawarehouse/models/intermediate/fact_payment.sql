{{config(
    materialized="table"
    , schema="intermediate"
)}}

select * 
from {{ref('payment')}}

-- ALTER TABLE datawarehouse.fact_payment
-- ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id),
-- ADD CONSTRAINT payment_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES datewarehouse.fact_customer(customer_id) ON DELETE RESTRICT ON UPDATE CASCADE,
-- ADD CONSTRAINT payment_rental_id_fkey FOREIGN KEY (rental_id) REFERENCES datewarehouse.fact_rental(rental_id) ON DELETE SET NULL ON UPDATE CASCADE,
-- ADD CONSTRAINT payment_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES datewarehouse.fact_staff(staff_id) ON DELETE RESTRICT ON UPDATE CASCADE;

-- CREATE INDEX idx_fk_customer_id ON datawarehouse.fact_payment USING btree (customer_id);
-- CREATE INDEX idx_fk_rental_id ON datawarehouse.fact_payment USING btree (rental_id);
-- CREATE INDEX idx_fk_staff_id ON datawarehouse.fact_payment USING btree (staff_id);