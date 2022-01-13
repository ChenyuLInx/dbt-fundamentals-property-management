select
    id as lease_id,
    rental_application_id,
    completed,
    start_date,
    end_date
from {{source('property_management', 'leases')}}