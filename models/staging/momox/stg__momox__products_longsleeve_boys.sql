-- stg__momox__products_longsleeve_boys.sql

with source as (
    select * from {{source('momox', 'products_longsleeve_boys')}}
),

renamed as (
    select
        *
    from
        source
)

select * from renamed