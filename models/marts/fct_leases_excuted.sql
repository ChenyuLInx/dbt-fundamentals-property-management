with dim_tenants as (
    select * from {{ref('dim_tenants')}}
),

stg_rental_applications as (
    select * from {{ref('stg_rental_applications')}}
),

stg_leases as (
    select * from {{ref('stg_leases')}}
),

curr_tenant as (
    select
        first_name,
        last_name,
        lease_id
    from dim_tenants join stg_rental_applications on dim_tenants.contact_id=stg_rental_applications.contact_info_id
    where application_status='converted_to_tenant'
)

-- might need to add completed = true
select * from curr_tenant join stg_leases using (lease_id)