with sales as (
    select *
    from {{ref('int_sales')}}
)

select 
    invoice_line_id,
    invoice_id,
    invoice_date,
    customer_id,
    track_id,
    quantity,
    unit_price,
    revenue
from sales