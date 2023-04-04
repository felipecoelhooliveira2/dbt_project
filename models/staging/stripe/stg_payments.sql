    with payments as (

    select
        id as PAYMENT_ID,
        orderid as ORDER_ID,
        paymentmethod as PAYMENT_METHOD,
        status as STATUS,
        amount as AMOUNT,
        created as CREATED_AT


    from  {{ source('stripe','payment') }} 

)
select * from payments
