with source as (
    select * 
    from {{source('chinook', 'invoice_line')}}
),

renamed as (
    select 
        invoice_line_id,
        invoice_id,
        track_id,
        unit_price::numeric(10,2) as unit_price,
        quantity::int as quantity
    from source
)

select * from renamed