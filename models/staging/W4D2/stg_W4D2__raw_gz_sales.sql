with

    source as (select * from {{ source("W4D2", "raw_gz_sales") }}),

    renamed as (

        select date_date, orders_id, pdt_id as products_id, revenue, quantity from source

    )

select *
from renamed
