
with orders as (
    select 
        id,
        user_id,
        order_date,
        status,
        _etl_loaded_at
    from {{ ref('raw_dynamics__orders') }}
)

select * from orders