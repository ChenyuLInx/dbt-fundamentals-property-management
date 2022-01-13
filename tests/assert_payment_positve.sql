with final as (
    select
        order_id,
        sum(amount) as total
    from {{ref('fct_total_transactions')}}
    group by order_id
)

select * from final where total < 0