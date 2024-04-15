-- int_incremental_all_momox_articles.sql

{{
    config(
        materialized='incremental',
        unique_key='PRODUCT_ID',
        on_schema_change="sync_all_columns",
        incremental_strategy="append"
    )
}}

with int_all_momox_articles as (
    select * from {{ref('int_all_momox_articles')}}
),

selected as (
    select
        PRODUCT_ID,
        'what' as info,
        EXTRACTED_AT,
        current_timestamp as updated_at
    from
        int_all_momox_articles
)

select * from selected

{% if is_incremental() %}

    where EXTRACTED_AT > '2024-03-21 21:42:09.000000000'

{% endif %}