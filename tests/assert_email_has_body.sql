select
    *
from {{ref('fct_emails_delivered')}}
where body is null or subject is null