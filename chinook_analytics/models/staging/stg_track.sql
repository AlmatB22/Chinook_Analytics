with source as (
    select *
    from {{source('chinook', 'track')}}
),
renamed as (
    select 
        track_id,
        "name" as track_name,
        album_id,   
        genre_id,
        composer,
        milliseconds,
        bytes,
        unit_price::numeric(10,2) as unit_price
    from source
)
select * from renamed