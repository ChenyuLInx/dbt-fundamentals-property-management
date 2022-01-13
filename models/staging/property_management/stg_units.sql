select
    id as unit_id,
    rent,
    property_id,
    status as unit_status
from {{source('property_management', 'units')}}
