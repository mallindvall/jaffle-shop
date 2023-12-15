{% {% snapshot customer_snapshots %}
    {{
        config(
            target_schema='snapshots',
            unique_key='customer_id',
            strategy='timestamp',
            updated_at='updated_at_field'
        )
    }}

    select * from {{ source('raw', 'raw_snapshot__test_manual') }}
 {% endsnapshot %}%}