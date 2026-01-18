select 
    album_id,
    title,
    artist_id
from {{source('chinook', 'album')}}