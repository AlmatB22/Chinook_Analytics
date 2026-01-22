with source as (
    select * 
    from {{source('chinook', 'media_type')}}
),
renamed as (
    select 
        media_type_id,
        name as media_type_name
    from source
)
select * from renamed