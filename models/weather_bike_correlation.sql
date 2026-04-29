WITH CTE AS (
    select 
    t.*,
    w.*
    from {{ ref('trip_fact') }} t
    LEFT JOIN {{ ref('daily_weather') }} w 
    on t.trip_date = w.daily_weather


)

select 
*
from cte