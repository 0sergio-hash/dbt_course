SELECT ORDERS.ORDER_ID
,      ORDERS.CUSTOMER_ID
,      PAYMENTS.AMOUNT

FROM {{ ref('stg_jaffle_shop__orders') }}   AS ORDERS

LEFT JOIN {{ ref('stg_stripe__payments') }} AS PAYMENTS
    ON ORDERS.ORDER_ID = PAYMENTS.ORDERID