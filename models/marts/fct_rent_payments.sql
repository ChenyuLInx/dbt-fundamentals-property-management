with dim_tenants as (
    select * from {{ref('dim_tenants')}}
), 
-- lease_id, contact_id, tenant infos

stg_leases as (
    select * from {{ref('stg_leases')}}
),

-- lease_id, application_id, unit

-- use rent amount
stg_units as (
    select * from {{ref('stg_units')}}
),
-- unit_id, rent, property_id

stg_transactions as (
    select * from {{ref('stg_transactions')}}
)
-- transaction_id, payer, payee

select * from dim_tenants join stg_leases using (lease_id)
-- feels like I will also need the actual application to tie everything together, this is just place holder