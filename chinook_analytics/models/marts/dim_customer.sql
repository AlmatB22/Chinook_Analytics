with customer as (
    select *
    from {{ref('stg_customer')}}
)

select 
    customer_id,
    first_name,
    last_name,
    company,
    city, 
    "state",
    country, 
    email, 
    support_rep_id
from customer
