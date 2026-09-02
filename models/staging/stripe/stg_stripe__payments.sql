SELECT ID
,      ORDERID
,      PAYMENTMETHOD
,      STATUS
,      AMOUNT
,      CREATED
,      _BATCHED_AT

FROM {{ source('stripe', 'payment') }} 