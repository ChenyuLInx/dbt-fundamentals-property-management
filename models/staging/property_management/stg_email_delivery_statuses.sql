select
    id,
    email_id,
    event as email_event
from {{ source('property_management', 'email_delivery_statuses')}}