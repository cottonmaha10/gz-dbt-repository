{{config(materialized='table')}}

select * from {{ ref("int_orders_margin") }} where total_margin>5000
