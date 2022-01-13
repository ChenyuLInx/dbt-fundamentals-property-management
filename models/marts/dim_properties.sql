with stg_properties as (
    select * from {{ref('stg_properties')}}
),
-- property_id, property_name, property_city

stg_property_owners as (
    select * from {{ref('stg_property_owners')}}
),
-- property_owner_id, property_id

stg_units as (
    select * from {{ref('stg_units')}}
),
-- unit_id, rent, property_id, unit_status


-- feels kind of iffy but this is not to train my sql skill
property_with_owner as (
    select * from stg_properties join stg_property_owners using (property_id)
)


-- I still didn't get owner name etc, and the owning relation feels kind of vauge
select * from property_with_owner join stg_units using (property_id)

