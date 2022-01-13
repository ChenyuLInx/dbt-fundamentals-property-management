with email_delivered as (
    select email_id from {{ref('stg_email_delivery_statuses')}}
    where email_event = 'delivered'
),


stg_emails as (
    select * from {{ref('stg_emails')}}
)

select
    stg_emails.email_id,
    subject,
    body
from stg_emails join email_delivered using (email_id)