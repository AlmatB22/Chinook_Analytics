with track as (
    select * 
    from {{ref('stg_track')}}
),
album as (
    select *
    from {{ref('stg_album')}}
),
artist as (
    select * 
    from {{ref('stg_artist')}}
),
genre as (
    select *
    from {{ref('stg_genre')}}
)

select 
    t.track_id,
    t.track_name,
    al.album_id,
    al.album_title,
    ar.artist_id,
    ar.artist_name,
    g.genre_id,
    g.genre_name,
    t.unit_price,
    t.milliseconds
from track t
left join genre g on g.genre_id = t.genre_id
left join album al on al.album_id = t.album_id
left join artist ar on ar.artist_id = al.artist_id