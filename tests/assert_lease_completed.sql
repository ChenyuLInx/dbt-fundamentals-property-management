select
    *
from {{ref('fct_leases_excuted')}}
where not completed
