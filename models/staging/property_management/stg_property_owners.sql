select
    id,
    owner_id as property_owner_id,
    property_id
from {{source('property_management', 'property_owners')}}