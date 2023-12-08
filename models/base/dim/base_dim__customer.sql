
with customer as (
    select
        id,
        first_name,
        last_name
    from {{ ref('raw_crm__customers') }}
)

select * from customer