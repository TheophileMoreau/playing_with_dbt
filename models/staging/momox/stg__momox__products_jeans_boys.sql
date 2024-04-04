-- stg__momox__products_jeans_boys.sql

with source as (
    select * from {{source('momox', 'products_jeans_boys')}}
),

renamed as (
    select
        *
    from
        source
)

select * from renamed