with source as (
    select * from {{ source('thub_hub', 'domain_events') }}
),

renamed_domain_events as (
    select
        id as event_id,
        user_id,
        event_type,
        created_at,
        updated_at
    from source
)

select * from renamed_domain_events
