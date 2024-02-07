select *
from {{ ref('finance_days') }} as finance_days
left join {{ ref('campaigns_day') }} as campaign_days using (date_date)
