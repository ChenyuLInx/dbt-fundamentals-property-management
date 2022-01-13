with contact_count as(
    select
        count(contact_id) as id_count,
        contact_id
    from {{ref('dim_tenants')}}
    group by contact_id
)
select * from contact_count where id_count > 1

