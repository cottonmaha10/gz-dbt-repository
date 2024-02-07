SELECT*
from {{ref("stg_raw2__adwords")}}
UNION ALL

SELECT*
from {{ref("stg_raw2__bing")}}
UNION ALL

SELECT*
from {{ref("stg_raw2__facebook")}}
UNION ALL

SELECT*
from {{ref("stg_raw2__criteo")}}
