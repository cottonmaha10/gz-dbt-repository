with

    source as (select * from {{ source("W4D2", "raw_gz_product") }}),

    renamed as (select products_id, purchse_price as purchase_price from source)

select *
from renamed
