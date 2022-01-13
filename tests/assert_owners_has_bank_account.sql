select
    *
from {{ref('dim_owners')}}
where bank_name is null
