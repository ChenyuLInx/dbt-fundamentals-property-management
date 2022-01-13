select
    id as application_id,
    status as application_status,
    contact_info_id
from {{ source('property_management', 'rental_applications') }}