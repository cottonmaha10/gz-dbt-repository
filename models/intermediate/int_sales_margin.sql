with
    sqa as (
        select *

        from {{ ref("stg_raw__sales") }} as sales
        left join
            {{ ref("stg_raw__product") }} as product
            on sales.pdt_id = product.products_id
    )

select
    *,
    quantity * cast(purchse_price as float64) as purchase_cost,
    revenue - cast(purchse_price as float64) as margin
from sqa
