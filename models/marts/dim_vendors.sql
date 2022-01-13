with stg_vendors as (
    select * from {{ref('stg_vendors')}}
),
-- contact_info_id, vendor_id, bank_account_id

stg_bank_accounts as (
    select * from {{ref('stg_bank_accounts')}}
),
-- bank_account_id, infos etc

stg_contact_infos as (
    select * from {{ref('stg_contact_infos')}}
),
-- contact_id, infos

vendor_with_contact as (
    select * from stg_vendors join stg_bank_accounts using (bank_account_id)
)

select * from vendor_with_contact join stg_contact_infos on vendor_with_contact.contact_info_id=stg_contact_infos.contact_id