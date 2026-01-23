with sales as (
    select *
    from {{ref('int_sales')}}
),

aggregated as (
    select 
        customer_id,
        invoice_id,
        min(invoice_date) as invoice_date,
        sum(revenue) as invoice_revenue
    from sales
    group by customer_id, invoice_id
)

select * from aggregated