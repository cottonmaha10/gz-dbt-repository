WITH sqa AS (SELECT 
date_date
,count (orders_id)AS nb_orders
,ROUND (SUM (MARGIN),2) AS total_margin

from {{ref("int_sales_margin")}}
GROUP BY 1)

SELECT 
total_margin/nb_orders
from sqa
--CALCULATE MARGIN PER ORDER