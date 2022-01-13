with stg_bank_accounts as (
    select * from {{ref('stg_bank_accounts')}}
),
-- bank_account_id, name, account_number, rounting#

stg_contact_infos as (
    select * from {{ref('stg_contact_infos')}}
),
-- contact_id, names, etc

stg_owners as (
    select * from {{ref('stg_owners')}}
),
-- owner_id, contact_info_id, bank_account_id


owner_contact as (
    select * 
    from stg_owners join stg_contact_infos 
        on (stg_owners.contact_info_id = stg_contact_infos.contact_id)
)

select * from owner_contact join stg_bank_accounts using(bank_account_id)