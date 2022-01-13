select
    id as property_id,
    name as property_name,
    city as property_city
from {{source('property_management', 'properties')}}