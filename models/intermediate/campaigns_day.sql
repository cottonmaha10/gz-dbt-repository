select
    date_date,
    paid_source,
    sum(ads_cost) as total_ads_cost,
    sum(impression) as total_impressions,
    sum(click) as total_clicks
from {{ ref("int_campaigns") }}
GROUP BY 1,2
