{{config(
    materialized="table"
    , schema="raw"
)}}

select * 
from {{source('public', 'rental')}}