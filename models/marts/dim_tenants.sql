with stg_tenants as (
    select * from {{ref('stg_tenants')}}
),

stg_bank_accounts as (
    select * from {{ref('stg_bank_accounts')}}
),

stg_contact_infos as (
    select * from {{ref('stg_contact_infos')}}
),

tenent_with_contact as(
    select * 
    from stg_tenants join stg_contact_infos on stg_tenants.contact_info_id = stg_contact_infos.contact_id
)

select *
from tenent_with_contact join stg_bank_accounts using (bank_account_id)