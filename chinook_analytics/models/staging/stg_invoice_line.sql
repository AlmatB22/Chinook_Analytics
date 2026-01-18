select 
    invoice_line_id,
    invoice_id,
    track_id,
    unit_price,
    quantity
from {{source('chinook', 'invoice_line')}}