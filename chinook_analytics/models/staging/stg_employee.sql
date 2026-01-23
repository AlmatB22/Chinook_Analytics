with source as (

    select *
    from {{ source('chinook', 'employee') }}

),

renamed as (

    select
        employee_id,
        first_name,
        last_name,
        title,
        reports_to,
        birth_date::date as birth_date,
        hire_date::date as hire_date,
        "address",
        city,
        "state",
        country,
        postal_code,
        phone,
        fax,
        email

    from source

)

select * from renamed
