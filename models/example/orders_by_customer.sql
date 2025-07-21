{{ config(materialized='table') }}

select
    c.id as customer_id,
    c.first_name,
    c.last_name,
    min(o.order_date) as first_order_date,
    max(o.order_date) as most_recent_order_date,
    count(o.id) as number_of_orders
from {{ source('jaffle_shop', 'customers') }} c
left join {{ source('jaffle_shop', 'orders') }} o on c.id = o.user_id
group by 1, 2, 3
order by 1