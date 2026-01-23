with invoice as (
    select *
    from {{ref('stg_invoice')}}
),
invoice_line as (
    select *
    from {{ref('stg_invoice_line')}}
),
joined as (
    select 
        il.invoice_line_id,
        i.invoice_id,
        i.invoice_date,
        i.customer_id,
        il.track_id,
        il.quantity,
        il.unit_price,
        il.quantity * il.unit_price as revenue
    from invoice_line il 
    left join invoice i on i.invoice_id = il.invoice_id
)

select * from joined