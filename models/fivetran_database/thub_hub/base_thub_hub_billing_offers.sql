with source as (
    select * from {{ source('thub_hub', 'organizations') }}
),

renamed as (
    select
        {{ adapter.quote("ID") }} as SLS3001_ORGANIZATION_ID_K,
        {{ adapter.quote("ALIAS") }} as SLS3001_ORGANIZATION_ALIAS_X,
        {{ adapter.quote("NAME") }} as SLS3001_ORGANIZATION_NAME_N,
        {{ adapter.quote("ADDRESS") }} as SLS3001_ORGANIZATION_ADDRESS_L,
        {{ adapter.quote("PRIMARY_CONTACT_ID") }} as SLS3001_PRIMARY_CONTACT_ID_K,
        {{ adapter.quote("PARTNER_ID") }} as SLS3001_PARTNER_ID_K,
        {{ adapter.quote("STATUS") }} as SLS3001_ORGANIZATION_STATUS_C,
        {{ adapter.quote("CREATED_AT") }} as SLS3001_ORGANIZATION_CREATED_S,
        {{ adapter.quote("UPDATED_AT") }} as SLS3001_ORGANIZATION_UPDATED_S,
        {{ adapter.quote("DELETED_AT") }} as SLS3001_ORGANIZATION_DELETED_S,
        {{ adapter.quote("_FIVETRAN_DELETED") }} as SLS3001_FIVETRAN_DELETED_F,
        {{ adapter.quote("_FIVETRAN_SYNCED") }} as SLS3001_FIVETRAN_SYNCED_S

    from source
)

select * from renamed