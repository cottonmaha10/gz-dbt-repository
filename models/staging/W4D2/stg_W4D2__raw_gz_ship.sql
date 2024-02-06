with 

source as (

    select * from {{ source('W4D2', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        ship_cost

    from source
    

)

select * from renamed
