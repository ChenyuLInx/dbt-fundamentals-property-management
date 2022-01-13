with stg_transactions as (
    select * from {{ref('stg_transactions')}}
),
-- transaction_id, payer, payee

stg_payments as (
    select * from {{ref('stg_payments')}}
)
-- payment_id, order_id, 


-- totally random
select stg_payments.amount, transaction_id, payer, payee, order_id from stg_payments join stg_transactions on stg_payments.payment_id= stg_transactions.transaction_id