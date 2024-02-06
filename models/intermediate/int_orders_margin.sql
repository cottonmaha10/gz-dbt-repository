WITH sqa AS (SELECT 
date_date
,count (orders_id)AS nb_orders
,ROUND (SUM (MARGIN),2) AS total_margin
,ROUND (SUM (revenue),2) as total_revenue

from {{ref("int_sales_margin")}}
GROUP BY 1)

SELECT *

,ROUND (total_margin/nb_orders,2) AS margin_per_order
,ROUND (total_revenue/nb_orders,2) AS average_basket
from sqa
ORDER BY date_date
--CALCULATE MARGIN PER ORDER