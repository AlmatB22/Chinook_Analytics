select 
    media_type_id,
    name
from {{source('chinook', 'media_type')}}