select 
    artist_id,
    "name" 
from {{source('chinook', 'artist')}}