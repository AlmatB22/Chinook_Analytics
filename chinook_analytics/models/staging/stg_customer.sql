select 
        customer_id,
        first_name,
        last_name,
        company,
        address,
        city,
        state,
        country,
        postal_code,
        phone, 
        fax,
        email,
        support_rep_id
from {{source('chinook', 'customer')}}