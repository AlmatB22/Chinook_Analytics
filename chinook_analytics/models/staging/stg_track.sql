select 
    track_id,
    name,
    album_id,   
    genre_id,
    composer,
    milliseconds,
    bytes,
    unit_price
from {{source('chinook', 'track')}}