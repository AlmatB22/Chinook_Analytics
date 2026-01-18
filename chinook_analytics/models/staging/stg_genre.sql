select 
    genre_id,
    "name"
from {{source('chinook', 'genre')}}