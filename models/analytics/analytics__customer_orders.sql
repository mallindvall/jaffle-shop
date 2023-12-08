with customers as (
    select 
        id as customer_id,
        first_name,
        last_name
    from {{ ref('base_dim__customer') }}
),

orders as (
    select *
    from {{ ref('base_facts__orders') }}
),

customer_orders as(
    select * 
    from orders
    left join customers on orders.user_id = customers.customer_id
)

select * from customer_orders