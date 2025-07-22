{{ config(materialized='view') }}

select
    {{ dbt_utils.star(from=source('jaffle_shop', 'customers')) }}

from {{ source('jaffle_shop', 'customers') }}
where id is not null
