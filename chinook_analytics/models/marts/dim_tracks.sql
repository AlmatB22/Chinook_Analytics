with tracks as (
    select *
    from {{ref('int_tracks')}}
)

select 
    track_id,
    track_name,
    album_title,   
    artist_name,
    genre_name,
    unit_price,
    milliseconds
from tracks