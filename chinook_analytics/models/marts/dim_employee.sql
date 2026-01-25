with employee as (
    select *
    from {{ref('stg_employee')}}
)

select 
    employee_id,
    first_name,
    last_name, 
    title, 
    hire_date,
    city, 
    "state",
    country
from employee