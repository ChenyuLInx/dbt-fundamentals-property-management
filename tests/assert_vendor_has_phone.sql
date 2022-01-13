select
    *
from {{ref('dim_vendors')}}
where phone_number is null