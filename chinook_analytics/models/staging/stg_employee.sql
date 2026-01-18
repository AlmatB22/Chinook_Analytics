select
    birth_date,
    hire_date,
    reports_to,
    employee_id,
    address,
    city,
    state,
    country,
    postal_code,
    phone,
    fax,
    email,
    last_name,
    first_name,
    title
from {{source('chinook', 'employee')}}