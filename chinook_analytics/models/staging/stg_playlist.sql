select 
    playlist_id,
    "name"
from {{source('chinook', 'playlist')}}