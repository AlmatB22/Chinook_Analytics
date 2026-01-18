select
    playlist_id,
    track_id
from {{source('chinook', 'playlist_track')}}