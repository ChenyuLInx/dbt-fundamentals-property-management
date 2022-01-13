select
    id as transaction_id,
    type as transaction_type,
    amount,
    payer,
    payee

from {{source('property_management', 'transactions')}}
    