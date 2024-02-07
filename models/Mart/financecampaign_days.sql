with
    sqa as (
        select *
        from {{ ref("finance_days") }} as finance_days
        left join {{ ref("campaigns_day") }} as campaign_days using (date_date)
    ),
    sqb as (
        select *, round(total_revenue - total_margin, 2) as operational_margin from sqa
    )

select *, round(operational_margin - total_ads_cost, 2) as ads_margin

from
    sqb
    -- Ads margin = operational margin - ads cost
    
