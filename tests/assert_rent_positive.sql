select
    *
from {{ref('dim_properties')}}
where rent < 0