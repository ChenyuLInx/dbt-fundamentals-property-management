select
    id as email_id,
    subject,
    body
from {{source('property_management', 'emails')}}