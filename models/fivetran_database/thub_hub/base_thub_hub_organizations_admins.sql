with source as (
    select * from {{ source('thub_hub', 'organizations_admins') }}
),

renamed as (
    select
        {{ adapter.quote("ORGANIZATION_ID") }} as SLS2001_ORGANIZATION_ID_K,
        {{ adapter.quote("USER_ID") }} as SLS2001_USER_ID_K,
        {{ adapter.quote("CREATED_AT") }} as SLS2001_ADMIN_CREATED_S,
        {{ adapter.quote("UPDATED_AT") }} as SLS2001_ADMIN_UPDATED_S,
        {{ adapter.quote("_FIVETRAN_DELETED") }} as SLS2001_FIVETRAN_DELETED_F,
        {{ adapter.quote("_FIVETRAN_SYNCED") }} as SLS2001_FIVETRAN_SYNCED_S

    from source
)

select * from renamed